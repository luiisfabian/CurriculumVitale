import 'package:animate_do/animate_do.dart';
import 'package:curriculum_vitale/widgets/circle.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black54,
      body: Stack(
        children: [
          Positioned(
            left: size.height * 0.1,
            child: Circle(colors: [
              Colors.black,
              Colors.grey,
              Colors.black
            ], radius: size.width * 0.1),
          ),
          Positioned(
            left: size.height * 0.3,
            top: size.height * 0.5,
            child: Circle(colors: [
              Colors.black,
              Colors.grey,
              Color.fromARGB(255, 0, 0, 0)
            ], radius: size.width * 0.1),
          ),
          Positioned(
            left: size.height * 0.6,
            child: Circle(colors: [
              Colors.black,
              Colors.grey,
              Colors.black
            ], radius: size.width * 0.1),
          ),
          Positioned(
            left: size.height * 0.9,
            top: size.height * 0.5,
            child: Circle(colors: [
              Color.fromARGB(31, 125, 103, 223),
              Colors.grey,
              Colors.black
            ], radius: size.width * 0.1),
          ),
          Positioned(
            left: size.height * 1.2,
            child: Circle(colors: [
              Colors.black,
              Colors.grey,
              Colors.black
            ], radius: size.width * 0.1),
          ),
          Positioned(
            left: size.height * 1.5,
            top: size.height * 0.5,
            child: Circle(colors: [
              Colors.black,
              Colors.grey,
              Colors.black
            ], radius: size.width * 0.1),
          ),
          Container(
            padding: EdgeInsets.all(40),
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                SlideInDown(
                  duration: Duration(seconds: 2),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "PROFILE",
                        style: TextStyle(
                            fontFamily: "Courier New",
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: size.height * 0.6,
                    width: size.width * 0.6,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          BounceInUp(
                            duration: Duration(seconds: 3),
                            child: Text(
                              "Tecnólogo en sistemas, Con experiencia laboral como desarrollador de software y auxiliar de sistemas en soporte; conocimiento y manejo de herramientas como Lading page, web page, SQL Server, Firebase, Angular, flutter, Html 5, Bootstap, Firebase, Angular material; capacidad para realizar soporte a usuarios en el área de sistemas.",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'Courier New',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
