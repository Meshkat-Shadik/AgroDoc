import 'package:agro_doc/presentation/constants.dart';
import 'package:flutter/material.dart';

class CommonDisease extends StatelessWidget {
  const CommonDisease({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CommonDiseaseCard(
              imageUrl: 'assets/images/rice.png',
              title: 'RICE',
            ),
            SizedBox(height: 8),
            CommonDiseaseCard(
              imageUrl: 'assets/images/jute.png',
              title: 'JUTE',
            ),
            SizedBox(height: 8),
            CommonDiseaseCard(
              imageUrl: 'assets/images/mugbean.png',
              title: 'MUNG BEAN',
            ),
            SizedBox(height: 8),
            CommonDiseaseCard(
              imageUrl: '',
              title: '',
            ),
            SizedBox(height: 8),
            CommonDiseaseCard(
              imageUrl: '',
              title: '',
            ),
          ],
        ),
      ),
    );
  }
}

class CommonDiseaseCard extends StatelessWidget {
  const CommonDiseaseCard(
      {Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 294,
            height: 85,
            decoration: imageUrl.isNotEmpty
                ? BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    gradient: LinearGradient(
                        colors: [Colors.black, Colors.black],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.5, 0.5),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.mirror),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  )
                : BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: bottomNavBgColor,
                  ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
