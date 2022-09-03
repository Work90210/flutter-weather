/*
 * Created by Kyle Fuehri
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/ui/home/cubit/home_cubit.dart';

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
  Widget _buildLoaded() {
    return const Center(
      child: Text('Loaded'),
    );
  }

  /// Build a load failed UI
  /// This UI will be different for each error
  Widget _buildLoadFailed() {
    // TODO: Build this to be dynamic

    return const Center(
      child: Text('Something went wrong'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Weather",
            ),
            actions: [
              // Display search bar if page has loaded successfully
              if (state is HomeLoadedState)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MainSearchBar(
                    onChanged: (value) {},
                    onPress: () {},
                  ),
                )
            ],
          ),
          // What must be built based on each state
          body: state.map(
            loading: (_) => _buildLoading(),
            loaded: (_) => _buildLoaded(),
            loadFailed: (_) => _buildLoadFailed(),
          ),
        );
      },
    );
  }
}
