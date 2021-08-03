import 'package:agro_doc/presentation/constants.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: bottomNavBgColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
    );
  }
}
