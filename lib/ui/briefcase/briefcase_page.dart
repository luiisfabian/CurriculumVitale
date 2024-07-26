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
                      duration: const Duration(seconds: 2),
                      from: 500.0,
                      child: CardWidget(
                        image: "assets/angular.png",
                        name: "ANGULAR",
                      ),
                    ),
                    FadeInRightBig(
                      duration: const Duration(seconds: 2),
                      from: 500.0,
                      child: CardWidget(
                        image: "assets/flutter.png",
                        name: "FLUTTER",
                      ),
                    ),
                    FadeInRightBig(
                      duration: const Duration(seconds: 2),
                      from: 500.0,
                      child: CardWidget(
                        image: "assets/firebase.png",
                        name: "FIREBASE",
                      ),
                    ),
                    FadeInRightBig(
                      duration: const Duration(seconds: 2),
                      from: 500.0,
                      child: CardWidget(
                        image: "assets/google-cloud.png",
                        name: "GOOGLE CLOUD",
                      ),
                    ),
                    FadeInRightBig(
                      duration: const Duration(seconds: 2),
                      from: 500.0,
                      child: CardWidget(
                        image: "assets/html.png",
                        name: "HTML",
                      ),
                    ),
                    FadeInRightBig(
                      duration: const Duration(seconds: 2),
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
          const SizedBox(height: 5),
          RowExperience(
            title: "Kuvanty",
            experienceText1: "Maquetación",
            experienceText2: "Desarrollo de aplicación Web",
            experienceText3: "Manejo de bases de datos no relacionales",
            experienceText4: "Soporte a usuarios",
            experienceText5: "Desarrollo de nuevos modulos",
          ),
          const SizedBox(height: 5),
          RowExperience(
            title: "Colmena Seguros",
            experienceText1: "Maquetación",
            experienceText2: "Desarrollo de aplicación Web",
            experienceText3: "Manejo de bases de datos no relacionales y funciones de Google Cloud Platform",
            experienceText4: "Maquetación y diseño",
            experienceText5: "Soporte a usuarios",
            experienceText6: "Conexiones a API y seguridad",
          ),
          const SizedBox(height: 5),
          RowExperience(
            title: "Software Axa Colpatria",
            experienceText1: "Diseño e implementación de HTML y CSS",
            experienceText2: "Desarrollo de aplicación Web, maquetación",
            experienceText3: "Manejo de bases de datos no relacionales",
            experienceText4: "Maquetación",
          ),
          const SizedBox(height: 5),
          RowExperience(
            title: "WorkOut App",
            experienceText1: "Diseño",
            experienceText2: "Desarrollo de aplicación Móvil",
            experienceText3: "Manejo de bases de datos",
            experienceText4: "Maquetación",
          ),
          const SizedBox(height: 5),
          RowExperience(
            title: "Espacios Residenciales",
            experienceText1: "Diseño",
            experienceText2: "Desarrollo de aplicación Móvil",
            experienceText3: "Manejo de bases de datos no relacionales",
            experienceText4: "Maquetación",
          ),
          const SizedBox(height: 5),
          RowExperience(
            title: "Schedule App",
            experienceText1: "Diseño, maquetación",
            experienceText2: "Desarrollo de aplicación Móvil",
            experienceText3: "Manejo de bases de datos y servicios de GCP",
            experienceText4: "Implementación de metodologías para la organización del tiempo",
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
