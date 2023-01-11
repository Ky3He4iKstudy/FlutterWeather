import 'package:flutter/material.dart';
import 'package:flutter_weather/domain/entity/hours_dto.dart';

import 'base_card.dart';
import 'card_header.dart';
import 'card_type.dart';

class HourlyCard extends StatelessWidget {
  final List<HoursDto> hourlyListInfo;

  const HourlyCard({Key? key, required this.hourlyListInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return BaseCard(
        child: Column(children: [
      const CardHeader(cardType: CardType.hourly),
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: hourlyListInfo.map(
            (item) {
              var hoursStr = item.time;

              return Padding(
                  padding: const EdgeInsets.all(6),
                  child: Column(
                    children: <Widget>[
                      Text(hoursStr.length < 2 ? '0$hoursStr' : hoursStr,
                          style: appTextTheme.titleMedium),
                      const Divider(
                        height: 6,
                      ),
                      Text(item.condition.text),
                      const Divider(
                        height: 6,
                      ),
                      Text('${item.temp_c}°', style: appTextTheme.titleLarge)
                    ],
                  ));
            },
          ).toList()))
    ]));
  }
}
