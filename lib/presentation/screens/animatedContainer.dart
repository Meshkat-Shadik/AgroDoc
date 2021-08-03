/****************************************************************************/
/****************************************************************************/
/*********************** This File is not for project ***********************/
/*************It is for demonstrating the animation behaviour ***************/
/****************************************************************************/
///

import 'package:flutter/material.dart';

class AnimatedTest extends StatefulWidget {
  static const pathId = "/animated-test";
  const AnimatedTest({Key? key}) : super(key: key);

  @override
  _AnimatedTestState createState() => _AnimatedTestState();
}

class _AnimatedTestState extends State<AnimatedTest> {
  double? width;
  double? top;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.bounceOut,
              color: Colors.red,
              height: 100,
              width: width ?? 30,
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: width ?? 30,
            ),
            Container(
              height: 200,
              width: 100,
              child: Stack(
                children: [
                  AnimatedPositioned(
                    curve: Curves.bounceOut,
                    top: top ?? 10,
                    right: 10,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                    ),
                    duration: Duration(seconds: 1),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  width = width == 200 ? 30 : 200;
                  top = top == 10 ? 190 : 10;
                });
              },
              child: Text('Press to animate'),
            ),
          ],
        ),
      ),
    );
  }
}
