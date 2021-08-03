import 'package:agro_doc/presentation/constants.dart';
import 'package:agro_doc/presentation/widgets/animated_circle_button.dart';
import 'package:agro_doc/presentation/widgets/custom_floating_action_button.dart';
import 'package:agro_doc/presentation/widgets/my_navigation_bar.dart';
import 'package:flutter/material.dart';

class InspectPage extends StatefulWidget {
  static const pathId = "/inspect-page";
  final int selectedIconIndex;
  const InspectPage({Key? key, required this.selectedIconIndex})
      : super(key: key);

  @override
  _InspectPageState createState() => _InspectPageState();
}

class _InspectPageState extends State<InspectPage> {
  @override
  void initState() {
    super.initState();
    selected = widget.selectedIconIndex;
  }

  int? selected;
  double height = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBgColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFButton(),
      bottomNavigationBar: MyBottomNavigationBar(),
      body: Container(
        padding: EdgeInsets.all(34.0),
        child: Column(
          children: [
            const SizedBox(height: 11),
            Container(
              height: 76 * 3,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedCircleButton(
                    selected: selected,
                    height: height,
                    position: 1,
                    imgUrl: "assets/images/AppIcon.png",
                    onTap: () {
                      setState(() {
                        selected = selected == 1 ? 0 : 1;
                        height = 76 / 2;
                      });
                    },
                  ),
                  AnimatedCircleButton(
                    selected: selected,
                    height: height,
                    position: 2,
                    imgUrl: "assets/images/pcimg3.png",
                    onTap: () {
                      setState(() {
                        selected = selected == 2 ? 0 : 2;
                        height = 76 / 2;
                      });
                    },
                  ),
                  AnimatedCircleButton(
                    selected: selected,
                    height: height,
                    position: 3,
                    imgUrl: "assets/images/chart2.png",
                    onTap: () {
                      setState(() {
                        selected = selected == 3 ? 0 : 3;
                        height = 76 / 2;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
