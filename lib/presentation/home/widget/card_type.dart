import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

enum CardType {
  humidity(title: "Humidity", icon: WeatherIcons.humidity),
  wind(title: "Wind", icon: WeatherIcons.wind),
  visibility(title: "Visibility", icon: Icons.visibility),
  uvIndex(title: "UV Index", icon: WeatherIcons.day_sunny),
  hourly(title: "Hourly forecast", icon: Icons.watch_later_outlined),
  daily(title: "3 days forecast", icon: Icons.calendar_month_outlined);

  const CardType({required this.title, required this.icon});

  final String title;
  final IconData icon;
}
