import 'package:bmi_calculator/screens/second_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    Key? key,
    this.bmiResult,
    this.textResult1,
    this.textResult2,
    this.textResult3,
    this.differenceWeight,
    this.isOverWeight,
  }) : super(key: key);
  final double? bmiResult;
  final String? textResult1;
  final String? textResult2;
  final String? textResult3;
  final double? differenceWeight;
  final int? isOverWeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Your Result'),
        backgroundColor: Colors.grey[900],
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.amber[600],
              borderRadius: BorderRadius.all(Radius.circular(15.h.w)),
            ),
            height: 400.h.w,
            width: 290.w.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  textResult1 ?? '',
                  style: TextStyle(
                      fontSize: 24.h.w,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2.w),
                ),
                Text(
                  bmiResult!.toStringAsFixed(2),
                  style: TextStyle(
                      color: Colors.orangeAccent[700],
                      fontSize: 72.h.w,
                      fontWeight: FontWeight.bold),
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        textResult2 ?? '',
                        style: TextStyle(
                            fontSize: 20.h.w, fontWeight: FontWeight.w600),
                      ),
                      Text(textResult3 ?? '',
                          style: TextStyle(
                            fontSize: 18.h.w,
                          )),
                      Visibility(
                        visible: isOverWeight == 1 || isOverWeight == -1,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10.h.w,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((contest) =>
                                            SecondResultScreen(
                                                differenceWeight:
                                                    differenceWeight,
                                                isOverWeight: isOverWeight))));
                              },
                              child: Material(
                                color: Colors.black,
                                elevation: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10.h.w),
                                      color: Colors.orangeAccent[700]),
                                  child: Text(
                                    isOverWeight == 1
                                        ? ' Number of kilos to lose! '
                                        : ' Number of kilos to gain! ',
                                    style: TextStyle(
                                      fontSize: 22.h.w,
                                      fontFamily: '',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
