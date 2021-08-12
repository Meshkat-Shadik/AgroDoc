import 'package:agro_doc/presentation/constants.dart';
import 'package:agro_doc/presentation/widgets/animated_circle_button.dart';
import 'package:agro_doc/presentation/widgets/custom_floating_action_button.dart';
import 'package:agro_doc/presentation/widgets/my_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InspectPage extends StatefulWidget {
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFButton(),
      bottomNavigationBar: MyBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 34.0, right: 34.0, top: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 11),
              Container(
                height: 76 * 1.75,
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
              Container(
                decoration: BoxDecoration(
                  color: containerBgColor,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  boxShadow: boxShadowColors,
                ),
                height: size.height / 1.52,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InspectPageContainer(
                      title: 'Camera',
                      imgUrl: "assets/images/cameraIcon.png",
                      width: size.width / 1.16,
                    ),
                    InspectPageContainer(
                      title: 'Gallery',
                      imgUrl: "assets/images/galleryIcon.png",
                      width: size.width / 1.16,
                    ),
                    InspectPageContainer(
                      title: 'ANN based\nAnalysis',
                      imgUrl: "assets/images/analysisIcon.png",
                      width: size.width / 1.16,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InspectPageContainer extends StatelessWidget {
  const InspectPageContainer({
    required this.title,
    required this.imgUrl,
    required this.width,
    Key? key,
  }) : super(key: key);

  final String imgUrl;
  final String title;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      width: width / 1.16,
      decoration: BoxDecoration(
        color: bottomNavBgColor,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Image.asset(
                imgUrl,
              ),
            ),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
