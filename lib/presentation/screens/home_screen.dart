import 'package:agro_doc/presentation/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const pathId = "/homeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBgColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        color: Colors.transparent,
        height: 80,
        width: 80,
        child: FloatingActionButton(
          elevation: 0,
          onPressed: () {},
          backgroundColor: Colors.transparent,
          child: Image.asset(
            "assets/images/user.png",
            fit: BoxFit.fill,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: bottomNavBgColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ContainerWidget(
            imgUrl: "assets/images/leafIcon.png",
            title: "Inspect your plant",
            height: 80,
            width: 80,
          ),
          ContainerWidget(
            imgUrl: "assets/images/pcimg.png",
            title: "Common Diseases",
            height: 80,
            width: 80,
          ),
          ContainerWidget(
            imgUrl: "assets/images/chart.png",
            title: "Analysis History",
            height: 80,
            width: 80,
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({this.imgUrl, this.title, this.height, this.width});

  final String? imgUrl, title;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(4, 0),
                        color: Color.fromARGB(80, 0, 0, 0),
                        blurRadius: 10),
                    BoxShadow(
                        offset: Offset(-4, -4),
                        color: primaryBgColor,
                        blurRadius: 10)
                  ]),
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
                    style: GoogleFonts.lemonada(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
