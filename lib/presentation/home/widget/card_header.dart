import 'package:flutter/material.dart';

import 'card_type.dart';

class CardHeader extends StatelessWidget {
  final CardType cardType;

  const CardHeader({Key? key, required this.cardType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return Column(children: [
      Row(
        children: [
          Icon(
            cardType.icon,
            size: 20,
            color: appTextTheme.titleSmall?.color,
          ),
          const VerticalDivider(width: 10),
          Expanded(
              child: Text(
            cardType.title,
            style: appTextTheme.titleSmall,
          ))
        ],
      ),
      Divider(
        thickness: 1.0,
        color: appTextTheme.titleSmall?.color,
      ),
    ]);
  }
}
