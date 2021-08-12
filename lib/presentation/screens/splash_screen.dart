import 'package:agro_doc/presentation/constants.dart';
import 'package:agro_doc/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
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
        // AutoRouter.of(context).replace(HomeScreenRoute());
        context.router.replace(HomeScreenRoute());
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
