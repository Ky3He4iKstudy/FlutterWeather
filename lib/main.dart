import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/presentation/home/forecast/forecast_location_bloc.dart';
import 'package:flutter_weather/presentation/home/forecast/forecast_location_event.dart';
import 'package:flutter_weather/presentation/home/home_page.dart';
import 'package:flutter_weather/presentation/injector.dart';
import 'package:flutter_weather/core/config/theme/app_theme.dart';
import 'package:flutter_weather/presentation/settings/settings_page.dart';

void main() {
  initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ForecastLocationBloc>(
      create: (_) => injector()..add(const GetForecastLocationEvent()),
      child: MaterialApp(
        title: 'Weatherapp',
        // theme: theme.copyWith(textTheme: appTextTheme),
        theme: AppTheme.light,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/settings': (context) => const SettingsPage()
        },
      ),
    );
  }
}

