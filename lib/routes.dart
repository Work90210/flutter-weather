/*
 * Created by Kyle Fuehri
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/repositories/weather_repository.dart';
import 'package:flutter_weather/ui/home/cubit/home_cubit.dart';
import 'package:flutter_weather/ui/home/home_page.dart';

class Routes {
  static Route generateRoute(RouteSettings settings) {
    final name = settings.name;
    final args = settings.arguments;

    MaterialPageRoute route(Widget widget) {
      return MaterialPageRoute(
        builder: (context) => widget,
        settings: settings,
      );
    }

    // Home Page
    if (name == HomePage.routeName) {
      return route(
        BlocProvider(
          create: (context) => HomeCubit(
            weatherRepository: RepositoryProvider.of<WeatherRepository>(context),
          ),
          child: const HomePage(),
        ),
      );
    }

    return route(_errorRoute(settings));
  }

  static Widget _errorRoute(RouteSettings settings) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Route doesn\'t exist',
            ),
            Text(
              'Route: ${settings.name}',
            ),
            Text(
              'Arguments: ${settings.arguments}',
            ),
          ],
        ),
      ),
    );
  }
}
