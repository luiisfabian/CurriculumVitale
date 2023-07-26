import 'package:curriculum_vitale/widgets/circle.dart';
import 'package:curriculum_vitale/widgets/square.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30),
            child: Container(
              width: size.width * 0.5,
              height: size.height * 0.85,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "LUIS FABIAN MUÑOZ ORTIZ",
                      style: TextStyle(
                          fontFamily: "Roboto Slab",
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent),
                    height: 500,
                    width: 500,
                    child: Lottie.network("https://assets2.lottiefiles.com/private_files/lf30_obidsi0t.json")
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepPurpleAccent),
              width: size.width * 0.4,
              height: size.height * 0.85,
              child: Image.asset("assets/perfil.png"),
            ),
          )
        ],
      ),
    ));
  }
}
