import 'package:flutter/material.dart';

import 'base_card.dart';

class MainComponent extends StatelessWidget {
  final String title;
  final double temperature;
  final double minTemperature;
  final double maxTemperature;
  final String weatherDescription;

  const MainComponent(
      {Key? key,
      required,
      required this.title,
      required this.temperature,
      required this.minTemperature,
      required this.maxTemperature,
      required this.weatherDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appTextTheme = Theme.of(context).textTheme;
    return BaseCard(
        child: Column(
      children: <Widget>[
        Text(title, style: appTextTheme.titleLarge),
        Text(
          '$temperature°',
          style: appTextTheme.displayMedium,
        ),
        Text(
          weatherDescription,
          style: appTextTheme.titleLarge,
        ),
        Text(
            'Min. $minTemperature'
            ' Max. $maxTemperature',
            style: appTextTheme.titleLarge)
      ],
    ));
  }
}
