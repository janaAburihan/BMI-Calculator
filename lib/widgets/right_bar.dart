import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RightBar extends StatelessWidget {
  final double barWidth;
  const RightBar({super.key, required this.barWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25.h.w,
          width: barWidth.w.h,
          decoration: BoxDecoration(
              color: Colors.amber[700],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.h.w),
                bottomLeft: Radius.circular(20.h.w),
              )),
        )
      ],
    );
  }
}
