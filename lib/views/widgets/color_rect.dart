import 'package:flutter/material.dart';

class ColorRect extends StatelessWidget {
  final Color color;
  const ColorRect({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      color: color,
      height: MediaQuery.of(context).size.height / 4,
    );
  }
}