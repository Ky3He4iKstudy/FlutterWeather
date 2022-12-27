import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  const BaseCard(
      {Key? key, required this.child, this.height, this.width, this.color})
      : super(key: key);

  final Widget child;
  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: child,
        ));
  }
}
