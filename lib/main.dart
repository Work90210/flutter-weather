/*
 * Created by Kyle Fuehri
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/repositories/weather_repository.dart';
import 'package:flutter_weather/routes.dart';
import 'package:flutter_weather/ui/home/home_page.dart';

void main() {
  // Run main application
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => WeatherRepository(),
      child: const MaterialApp(
        title: 'Flutter Weather',
        initialRoute: HomePage.routeName,
        onGenerateRoute: Routes.generateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
