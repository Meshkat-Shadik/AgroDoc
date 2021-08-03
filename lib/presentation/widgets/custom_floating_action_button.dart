import 'package:agro_doc/presentation/widgets/circle_icon.dart';
import 'package:flutter/material.dart';

class CustomFButton extends StatelessWidget {
  const CustomFButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleIcon(
      height: 80,
      width: 80,
      imgUrl: "assets/images/user.png",
      bgColor: Colors.transparent,
      onTap: () {},
    );
  }
}
