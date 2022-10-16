import 'package:flutter/material.dart';

class RightBar extends StatelessWidget {
  final double barWidth;
  const RightBar({super.key, required this.barWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration: BoxDecoration(
              color: Colors.amber[700],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              )),
        )
      ],
    );
  }
}
