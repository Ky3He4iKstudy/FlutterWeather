import 'package:flutter/material.dart';

import 'base_card.dart';

class MainComponent extends StatelessWidget {
  final double temperature;
  final double minTemperature;
  final double maxTemperature;
  final String weatherDescription;

  const MainComponent(
      {Key? key,
      required,
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
