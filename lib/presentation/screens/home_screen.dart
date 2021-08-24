import 'package:agro_doc/presentation/constants.dart';
import 'package:agro_doc/presentation/widgets/custom_floating_action_button.dart';
import 'package:agro_doc/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:agro_doc/presentation/widgets/my_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const pathId = "/homeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFButton(),
      bottomNavigationBar: MyBottomNavigationBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ContainerWidget(
            imgUrl: "assets/images/leafIcon.png",
            title: "Inspect your plant",
            height: 80,
            width: 80,
            onTap: () {
              // AutoRouter.of(context)
              //     .push(InspectPageRoute(selectedIconIndex: 1));
              context.router.push(InspectPageRoute(selectedIconIndex: 1));
            },
          ),
          ContainerWidget(
            imgUrl: "assets/images/pcimg.png",
            title: "Common Diseases",
            height: 80,
            width: 80,
            onTap: () {
              // AutoRouter.of(context)
              //     .push(InspectPageRoute(selectedIconIndex: 2));
              context.router.push(InspectPageRoute(selectedIconIndex: 2));
            },
          ),
          ContainerWidget(
            imgUrl: "assets/images/chart.png",
            title: "Analysis History",
            height: 80,
            width: 80,
            onTap: () {
              // AutoRouter.of(context)
              //     .push(InspectPageRoute(selectedIconIndex: 3));
              context.router.push(InspectPageRoute(selectedIconIndex: 3));
            },
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget(
      {this.imgUrl, this.title, this.height, this.width, required this.onTap});

  final String? imgUrl, title;
  final double? height, width;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 45),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: size.height / 4.25,
                decoration: BoxDecoration(
                  color: containerBgColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    bottomLeft: Radius.circular(48),
                  ),
                  boxShadow: boxShadowColors,
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      height: height ?? 122,
                      width: width ?? 122,
                      child: Image.asset(
                        imgUrl ?? "",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      title ?? "",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
