import 'package:agro_doc/presentation/constants.dart';
import 'package:agro_doc/presentation/widgets/circle_icon.dart';
import 'package:flutter/material.dart';

class AnimatedCircleButton extends StatelessWidget {
  const AnimatedCircleButton({
    Key? key,
    required this.selected,
    required this.height,
    this.key1,
    required this.onTap,
    required this.position,
    required this.imgUrl,
  }) : super(key: key);

  final int? selected;
  final int position;
  final double height;
  final Key? key1;
  final onTap;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        selected == position
            ? AnimatedContainer(
                curve: Curves.bounceOut,
                duration: Duration(seconds: 1),
                height: selected == position ? height : 0,
              )
            : AnimatedContainer(
                curve: Curves.bounceIn,
                duration: Duration(seconds: 1),
                height: 0,
              ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          decoration: BoxDecoration(
              boxShadow: boxShadowColors,
              borderRadius: BorderRadius.all(Radius.circular(76))),
          key: key1,
          child: CircleIcon(
            height: 76,
            width: 76,
            imgUrl: imgUrl,
            bgColor:
                selected == position ? activeButtonColor : inactiveButtonColor,
            onTap: onTap,
            // Navigator.pushNamed(
            //   context, AnimatedTest.pathId);
          ),
        ),
      ],
    );
  }
}
