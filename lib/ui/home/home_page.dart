/*
 * Created by Kyle Fuehri
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_weather/ui/home/cubit/home_cubit.dart';
import 'package:flutter_weather/utils.dart';
import 'package:lottie/lottie.dart';

import '../components/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = "HomePage";

  /// Build a loading indicator
  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.blue,
      ),
    );
  }

  /// Build the loaded UI
  Widget _buildLoaded(BuildContext context, HomeLoadedState state) {
    return SingleChildScrollView(
      child: Padding(
        // Padding
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // Build weather card
            _buildWeatherCard(context, state),
            const SizedBox(height: 10),
            // Title
            Text(
              '5 Day forecast',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 10),
            // Build weather forecast for the next 5 days
            _buildForeCastList(context, state),
          ],
        ),
      ),
    );
  }

  /// A Card Widget with all the information about the current weather
  Widget _buildWeatherCard(BuildContext context, HomeLoadedState state) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: _buildWeatherCardBody(context, state),
      ),
    );
  }

  /// Card Body
  Widget _buildWeatherCardBody(BuildContext context, HomeLoadedState state) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image of current weather with temp underneath
            Column(
              children: [
                Utils.getWeatherIcon(
                  state.currentCondition.icon.toString(),
                  MediaQuery.of(context).size.width * 0.15,
                ),
                Text(
                  "${state.currentTemp.toString()}\u00B0C",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
            // Show information related to current city
            Column(
              children: [
                Text(
                  state.currentCondition.text.toString(),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 10),
                Text(
                  state.currentName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Text(
                  state.currentCountry,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ],
        ),

        // Display search bar if page has loaded successfully
        Positioned(
          top: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MainSearchBar(
              // If the value isn't empty, we allow the search
              onPress: (value) {
                if (value != '') {
                  BlocProvider.of<HomeCubit>(context).searchNewLocationOrReload(newLocation: value);
                }
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Build a list to show the next 5 days forecast
  Widget _buildForeCastList(BuildContext context, HomeLoadedState state) {
    return StaggeredGrid.count(
      crossAxisCount: 5,
      children: List.generate(
        state.fiveDayForeCast.length,
        (index) => Card(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Display the date of the forecast
              Text(Utils.getDateTime(state.fiveDayForeCast[index].dateEpoch!)),
              // Bottom part of body
              Row(
                children: [
                  // Get icon to display
                  Utils.getWeatherIcon(
                    state.fiveDayForeCast[index].day!.condition!.icon.toString(),
                    MediaQuery.of(context).size.width * 0.05,
                  ),
                  // Display all tempretures for the day
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "High: ${state.fiveDayForeCast[index].day!.maxtempC!}\u00B0C",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        "Low: ${state.fiveDayForeCast[index].day!.mintempC!}\u00B0C",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }

  /// Build a load failed UI with an option to refresh page
  Widget _buildLoadFailed(HomeCubit cubit) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('lottie/error.json', height: 250),
          const SizedBox(height: 20),
          const Text('Something went wrong'),
          const SizedBox(height: 20),
          SizedBox(
            width: 150,
            child: ElevatedButton(
                onPressed: () {
                  cubit.searchNewLocationOrReload();
                },
                child: Row(
                  children: const [
                    Expanded(child: Text("Reload Page")),
                    Icon(Icons.refresh),
                  ],
                )),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        // ? Selection Area (v3.3 update)
        // ? Allows the selection of text on web
        return SelectionArea(
          child: Scaffold(
            appBar: AppBar(
                title: const Text(
              "Weather",
            )),
            body: Align(
              alignment: Alignment.topCenter,
              // Build body based on state
              child: state.map(
                loading: (_) => _buildLoading(),
                loaded: (homeLoadedState) => _buildLoaded(context, homeLoadedState),
                loadFailed: (_) => _buildLoadFailed(BlocProvider.of<HomeCubit>(context)),
              ),
            ),
          ),
        );
      },
    );
  }
}
