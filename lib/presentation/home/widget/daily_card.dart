import 'package:flutter/material.dart';

import '../../../domain/entity/days_dto.dart';
import 'base_card.dart';
import 'card_header.dart';
import 'card_type.dart';

class DailyCard extends StatelessWidget {
  final List<DaysDto> daysInfo;

  const DailyCard({Key? key, required this.daysInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return BaseCard(
        child: Column(
      children: [
        const CardHeader(cardType: CardType.daily),
        Column(
          children: daysInfo.map((item) {
            // final dateTime = DateTime.fromMicrosecondsSinceEpoch(item.dateTime);

            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.date,
                      style: appTextTheme.titleLarge,
                    ),
                    Row(
                      children: [
                        Text(
                          '${item.day.avgtemp_c}°',
                          style: appTextTheme.titleLarge,
                        ),
                        const VerticalDivider(width: 5),
                        Text(item.day.condition.text)
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.date,
                      style: appTextTheme.titleMedium,
                    ),
                    Text(
                      'Min. ${item.day.mintemp_c}'
                      ' Max. ${item.day.maxtemp_c}',
                      style: appTextTheme.titleMedium,
                    )
                  ],
                ),
                Divider(
                  thickness: 1.0,
                  color: appTextTheme.titleMedium?.color,
                )
              ],
            );
          }).toList(),
        )
      ],
    ));
  }
}
