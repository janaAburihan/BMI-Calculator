import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondResultScreen extends StatelessWidget {
  const SecondResultScreen({
    Key? key,
    this.differenceWeight,
    this.isOverWeight,
  }) : super(key: key);
  final double? differenceWeight;
  final int? isOverWeight;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                  child: Text(
                'How many kilograms you should${isOverWeight == 1 ? ' lose ' : ' gain '}to get back to the normal weight range :',
                style: TextStyle(fontSize: 22.h.w, color: Colors.amber[600]),
              )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.orangeAccent[700],
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              width: 200.w,
              child: Center(
                  child: Text(
                '      ${differenceWeight!.toStringAsFixed(1)}\nkilograms.',
                style: TextStyle(
                  fontSize: 40.h.w,
                ),
              )),
            ),
            SizedBox(
              height: 70.h,
            ),
            Text(
              '    YOU\nGOT IT!',
              style: TextStyle(
                  fontSize: 80.h.w,
                  color: Colors.amber[600],
                  fontFamily: 'Inspiration'),
            )
          ],
        ),
      ),
    );
  }
}
