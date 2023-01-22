import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeftBar extends StatelessWidget {
  final double barWidth;
  const LeftBar({super.key, required this.barWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25.h.w,
          width: barWidth.w.h,
          decoration: BoxDecoration(
              color: Colors.amber[700],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.h.w),
                bottomRight: Radius.circular(20.h.w),
              )),
        )
      ],
    );
  }
}
