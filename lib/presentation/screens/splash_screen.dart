import 'package:agro_doc/presentation/constants.dart';
import 'package:agro_doc/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const pathId = "/";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    new Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, HomeScreen.pathId);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.height.toString() + "," + size.width.toString());
    return Scaffold(
      backgroundColor: primaryBgColor,
      body: Center(
        child: Column(
          children: [
            //SizedBox(height: size.height * 0.2),
            Expanded(
              flex: 2,
              child: Image.asset(
                "assets/images/AppIcon.png",
                height: 244,
                width: 194,
                alignment: Alignment.bottomCenter,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                'AgriDoc',
                style: GoogleFonts.lemonada(fontSize: 32),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 42.0, vertical: 32.0),
              child: LinearProgressIndicator(
                color: Colors.green,
                minHeight: 10.0,
                backgroundColor: Color(0xffC7D437),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
