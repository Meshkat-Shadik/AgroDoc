import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({
    Key? key,
    required this.height,
    required this.width,
    required this.imgUrl,
    required this.bgColor,
    required this.onTap,
  }) : super(key: key);
  final double height;
  final double width;
  final String imgUrl;
  final Color bgColor;
  final onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: FloatingActionButton(
        heroTag: null,
        elevation: 0,
        onPressed: onTap,
        backgroundColor: bgColor,
        child: Image.asset(
          imgUrl,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
