import 'package:articuno_internship/views/widgets/color_rect.dart';
import 'package:flutter/material.dart';


class BoxRow extends StatelessWidget {
  const BoxRow({
    Key? key,
    required this.flag,
  }) : super(key: key);

  final bool flag;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 1000),
              child: flag
                  ? const ColorRect(
                      key: Key('1'),
                      color: Colors.orange,
                    )
                  : const ColorRect(
                      key: Key('2'),
                      color: Colors.purple,
                    )),
        ),
        Expanded(
          child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 1000),
              child: flag
                  ? const ColorRect(
                      key: Key('2'),
                      color: Colors.purple,
                    )
                  : const ColorRect(
                      key: Key('1'),
                      color: Colors.orange,
                    )),
        ),
      ],
    );
  }
}