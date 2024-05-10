import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                height: size.height * 0.44,
                width: size.width * 1,
                child: CarouselSlider(
                  items: [
                    FadeInRightBig(
                      duration: Duration(seconds: 2),
                      from: 500.0,
                      child: CardWidget(
                        image: "assets/angular.png",
                        name: "ANGULAR",
                      ),
                    ),
                    FadeInRightBig(
                      duration: Duration(seconds: 2),
                      from: 500.0,
                      child: CardWidget(
                        image: "assets/flutter.png",
                        name: "FLUTTER",
                      ),
                    ),
                    FadeInRightBig(
                      duration: Duration(seconds: 2),
                      from: 500.0,
                      child: CardWidget(
                        image: "assets/firebase.png",
                        name: "FIREBASE",
                      ),
                    ),
                    FadeInRightBig(
                      duration: Duration(seconds: 2),
                      from: 500.0,
                      child: CardWidget(
                        image: "assets/google-cloud.png",
                        name: "GOOGLE CLOUD",
                      ),
                    ),
                    FadeInRightBig(
                      duration: Duration(seconds: 2),
                      from: 500.0,
                      child: CardWidget(
                        image: "assets/html.png",
                        name: "HTML",
                      ),
                    ),
                    FadeInRightBig(
                      duration: Duration(seconds: 2),
                      from: 500.0,
                      child: CardWidget(
                        image: "assets/css.png",
                        name: "CSS",
                      ),
                    ),
                    // Agrega más elementos aquí...
                  ],
                  options: CarouselOptions(
                    height: size.height * 0.44,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(milliseconds: 500),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height * 0.40,
                width: size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      RowExperience(
                        title: "Kuvanty",
                        experienceText1: "Maquetación",
                        experienceText2: "Desarrollo de aplicacion Web",
                        experienceText3:
                            "Manejo de base de datos no relacionales",
                        experienceText4: "Maquetación",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RowExperience(
                        title: "Colmena Seguros",
                        experienceText1: "Maquetación",
                        experienceText2: "Desarrollo de aplicacion Web",
                        experienceText3:
                            "Manejo de base de datos no relacionales y funciones de google Cloud Platform",
                        experienceText4: "Maquetación y diseño",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RowExperience(
                        title: "Software Axa colpatria",
                        experienceText1:
                            "Diseño e emplementacion de HTML y Css",
                        experienceText2:
                            "Desarrollo de aplicacion Web, maquetación",
                        experienceText3:
                            "Manejo de base de datos no relacionales",
                        experienceText4: "Maquetación",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RowExperience(
                        title: "WorkOut App",
                        experienceText1: "Diseño",
                        experienceText2: "Desarrollo de aplicacion Movil",
                        experienceText3: "Manejo de base de datos",
                        experienceText4: "Maquetación",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RowExperience(
                        title: "Espacios Residenciales",
                        experienceText1: "Diseño",
                        experienceText2: "Desarrollo de aplicacion Movil",
                        experienceText3: "Manejo de base de datos",
                        experienceText4: "Maquetación",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RowExperience(
                        title: "Schedule App",
                        experienceText1: "Diseño, maquetación",
                        experienceText2: "Desarrollo de aplicacion Movil",
                        experienceText3:
                            "Manejo de base de datos y servicios de GCP",
                        experienceText4:
                            "Implementación de metodologias para la organizacion del tiempo",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
