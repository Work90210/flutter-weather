/*
 * Created by Kyle Fuehri
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/ui/home/cubit/home_cubit.dart';
import 'package:flutter_weather/utils.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../models/weather_forecast_model/forecastday.dart';
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
  Widget _buildLoaded(
    BuildContext context, {
    required String currentConditionIcon,
    required String currentTemp,
    required String currentCondition,
    required String currentCity,
    required String currentCountry,
    required List<Forecastday> fiveDayForeCast,
  }) {
    return SingleChildScrollView(
      child: Padding(
        // Padding
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // Build weather card
            _buildWeatherCard(
              context,
              currentCity: currentCity,
              currentCondition: currentCondition,
              currentConditionIcon: currentConditionIcon,
              currentCountry: currentCountry,
              currentTemp: currentTemp,
            ),
            // Title
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                '5 Day forecast',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            // Build weather forecast for the next 5 days
            _buildForecastList(context, fiveDayForeCast),
          ],
        ),
      ),
    );
  }

  /// A Card Widget with all the information about the current weather
  Widget _buildWeatherCard(
    BuildContext context, {
    required String currentConditionIcon,
    required String currentTemp,
    required String currentCondition,
    required String currentCity,
    required String currentCountry,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: _buildWeatherCardBody(
          context,
          currentCity: currentCity,
          currentCondition: currentCondition,
          currentConditionIcon: currentConditionIcon,
          currentCountry: currentCountry,
          currentTemp: currentTemp,
        ),
      ),
    );
  }

  /// Card Body
  Widget _buildWeatherCardBody(
    BuildContext context, {
    required String currentConditionIcon,
    required String currentTemp,
    required String currentCondition,
    required String currentCity,
    required String currentCountry,
  }) {
    return Column(
      children: [
        // Display search bar if page has loaded successfully
        Padding(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image of current weather with temp underneath
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Utils.getWeatherIcon(
                  currentConditionIcon.toString(),
                  MediaQuery.of(context).size.width * 0.12,
                ),
                Text(
                  "${currentTemp.toString()}\u00B0C",
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                      ),
                ),
              ],
            ),
            // Show information related to current city
            Column(
              children: [
                Text(
                  currentCondition.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontSize: MediaQuery.of(context).size.width * 0.04),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    currentCity,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: MediaQuery.of(context).size.width * 0.015),
                  ),
                ),
                Text(
                  currentCountry,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: MediaQuery.of(context).size.width * 0.02),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  /// Build a list to show the next 5 days forecast
  Widget _buildForecastList(
    BuildContext context,
    List<Forecastday> fiveDayForeCast,
  ) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: ResponsiveGridList(
        desiredItemWidth: 250,
        children: List.generate(
          fiveDayForeCast.length,
          (index) => Card(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Column(
              children: [
                // Display the date of the forecast
                Text(Utils.getDateTime(fiveDayForeCast[index].dateEpoch!)),
                // Bottom part of body
                Row(
                  children: [
                    // Get icon to display
                    Utils.getWeatherIcon(
                      fiveDayForeCast[index].day!.condition!.icon.toString(),
                      MediaQuery.of(context).size.width * 0.05,
                    ),
                    const SizedBox(width: 15),
                    // Display all tempretures for the day
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "High: ${fiveDayForeCast[index].day!.maxtempC!}\u00B0C",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          "Low: ${fiveDayForeCast[index].day!.mintempC!}\u00B0C",
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
      ),
    );
  }

  /// Build a load failed UI with an option to refresh page
  Widget _buildLoadFailed(HomeCubit cubit, HomeLoadFailedState state) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('lottie/error.json', height: 250),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(state.errorMessage),
          ), // Display error message
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
              centerTitle: true,
              title: const Text("Weather"),
            ),
            body: Align(
              alignment: Alignment.topCenter,
              // Build body based on state
              child: state.map(
                loading: (_) => _buildLoading(),
                loaded: (homeLoadedState) => _buildLoaded(
                  context,
                  currentCity: homeLoadedState.currentName.toString(),
                  currentCondition: homeLoadedState.currentCondition.text.toString(),
                  currentConditionIcon: homeLoadedState.currentCondition.icon.toString(),
                  currentCountry: homeLoadedState.currentCountry,
                  currentTemp: homeLoadedState.currentTemp.toString(),
                  fiveDayForeCast: homeLoadedState.fiveDayForeCast,
                ),
                loadFailed: (homeLoadFailedState) => _buildLoadFailed(
                  BlocProvider.of<HomeCubit>(context),
                  homeLoadFailedState,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
