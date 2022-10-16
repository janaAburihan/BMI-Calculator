import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    Key? key,
    this.bmiResult,
    this.textResult1,
    this.textResult2,
    this.textResult3,
  }) : super(key: key);
  final double? bmiResult;
  final String? textResult1;
  final String? textResult2;
  final String? textResult3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Your Result'),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
          child: Container(
        decoration: BoxDecoration(
          color: Colors.amber[600],
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        height: MediaQuery.of(context).size.height * 2 / 3,
        width: MediaQuery.of(context).size.width * 2 / 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              textResult1 ?? '',
              style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.w500, letterSpacing: 2),
            ),
            Text(
              bmiResult!.toStringAsFixed(2),
              style: TextStyle(
                  color: Colors.orangeAccent[700],
                  fontSize: 72,
                  fontWeight: FontWeight.bold),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textResult2 ?? '',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(textResult3 ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                      )),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
