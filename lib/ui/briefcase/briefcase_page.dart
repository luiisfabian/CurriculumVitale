import 'package:animate_do/animate_do.dart';
import 'package:curriculum_vitale/widgets/card_widget.dart';
import 'package:curriculum_vitale/widgets/row_experience.dart';
import 'package:flutter/material.dart';

class BriefcasePage extends StatefulWidget {
  const BriefcasePage({super.key});

  @override
  State<BriefcasePage> createState() => _BriefcasePageState();
}

class _BriefcasePageState extends State<BriefcasePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black38,
              ),
              height: size.height * 0.4,
              width: size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FadeInRightBig(
                      duration: Duration(seconds: 2),
                      from: 500.0,
                      child: CardWidget(
                          image: "assets/angular.png", name: "ANGULAR")),
                  FadeInRightBig(
                      duration: Duration(seconds: 2),
                      from: 500.0,
                      child: CardWidget(
                          image: "assets/flutter.png", name: "FLUTTER")),
                  FadeInRightBig(
                      duration: Duration(seconds: 2),
                      from: 500.0,
                      child: CardWidget(
                          image: "assets/firebase.png", name: "FIREBASE")),
                  FadeInRightBig(
                      duration: Duration(seconds: 2),
                      from: 500.0,
                      child: CardWidget(
                          image: "assets/google-cloud.png",
                          name: "GOOGLE CLOUD")),
                  FadeInRightBig(
                      duration: Duration(seconds: 2),
                      from: 500.0,
                      child:
                          CardWidget(image: "assets/html.png", name: "HTML")),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: size.height * 0.4,
              width: size.width * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 166, 173, 177),
              ),
              child: ListView(
                children:[

                Column(
                  children: [
                    RowExperience(
                      title: "Kuvanty",
                      experienceText1: "Maquetación",
                      experienceText2: "Desarrollo de aplicacion Web",
                      experienceText3: "Manejo de base de datos no relacionales",
                      experienceText4: "Maquetación",
                    ),
                    RowExperience(
                      title: "Colmena Seguros",
                      experienceText1: "Maquetación",
                      experienceText2: "Desarrollo de aplicacion Web",
                      experienceText3: "Manejo de base de datos no relacionales",
                      experienceText4: "Maquetación",
                    ),
                    RowExperience(
                      title: "Software Axa colpatria",
                      experienceText1: "Maquetación",
                      experienceText2: "Desarrollo de aplicacion Web",
                      experienceText3: "Manejo de base de datos no relacionales",
                      experienceText4: "Maquetación",
                    ),
                    RowExperience(
                      title: "WorkOut App",
                      experienceText1: "Diseño",
                      experienceText2: "Desarrollo de aplicacion Movil",
                      experienceText3: "Manejo de base de datos",
                      experienceText4: "Maquetación",
                    ),
                  ],
                ),
          ]
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
