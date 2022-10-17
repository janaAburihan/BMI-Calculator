import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/left_bar.dart';
import '../widgets/right_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? height = '';
  String? weight = '';
  double? bmiResult = 0;
  String textResult1 = '';
  String textResult2 = '';
  String textResult3 = '';
  bool valid = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator',
            style: TextStyle(
                color: Colors.amber[700], fontWeight: FontWeight.w500)),
        backgroundColor: Colors.grey[900],
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 20.h),
          Text(
            'Enter your height(in metres) and weight(in kilogrammes) :',
            style: TextStyle(
                color: Colors.amber[700],
                fontSize: 20.w.h,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100.w.h,
                child: TextField(
                  onChanged: (String? v) {
                    height = v;
                  },
                  style: TextStyle(
                      fontSize: 30.h.w,
                      color: Colors.amber[700],
                      fontWeight: FontWeight.w300),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Height',
                      hintStyle: TextStyle(
                          fontSize: 30.h.w,
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.w300)),
                ),
              ),
              SizedBox(
                width: 100.w.h,
                child: TextField(
                  onChanged: (String? v) {
                    weight = v;
                  },
                  style: TextStyle(
                      fontSize: 30.h.w,
                      color: Colors.amber[700],
                      fontWeight: FontWeight.w300),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Weight',
                      hintStyle: TextStyle(
                          fontSize: 30.h.w,
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.w300)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          InkWell(
            onTap: (() {
              if (weight!.isNotEmpty &&
                  height!.isNotEmpty &&
                  weight != '0' &&
                  height != '0') {
                bmiResult = double.parse(weight!) /
                    (double.parse(height!) * double.parse(height!));
                if (bmiResult! > 25) {
                  textResult1 = "OVERWEIGHT";
                  textResult2 = "Overweight BMI range:";
                  textResult3 = "More than 25 kg/m^2";
                } else if (bmiResult! < 18.5) {
                  textResult1 = "UNDERWEIGHT";
                  textResult2 = "Underweight BMI range:";
                  textResult3 = "Less than 18.5 kg/m^2";
                } else {
                  textResult1 = "NORMAL";
                  textResult2 = "Normal BMI range:";
                  textResult3 = "18.5 - 25 kg/m^2";
                }
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => ResultScreen(
                            bmiResult: bmiResult,
                            textResult1: textResult1,
                            textResult2: textResult2,
                            textResult3: textResult3))));
                setState(() {
                  valid = true;
                });
              } else {
                valid = false;
                setState(() {});
              }
            }),
            child: Text(
              'Calculate',
              style: TextStyle(
                  fontSize: 24.h.w,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber[700]),
            ),
          ),
          Visibility(
            visible: !valid,
            child: Text(
              'Please enter valid values for the height and weight!',
              style: TextStyle(color: Colors.red, fontSize: 14.h.w),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const RightBar(barWidth: 40),
          SizedBox(
            height: 20.h,
          ),
          const RightBar(barWidth: 70),
          SizedBox(
            height: 20.h,
          ),
          const RightBar(barWidth: 40),
          SizedBox(
            height: 20.h,
          ),
          const LeftBar(barWidth: 70),
          SizedBox(
            height: 50.h,
          ),
          const LeftBar(barWidth: 70),
        ],
      )),
    );
  }
}
