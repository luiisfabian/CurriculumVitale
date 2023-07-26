import 'package:curriculum_vitale/widgets/circle.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: size.height*0.2,
            left: size.height * 0.8,
            child: Circle(colors: [
              Color.fromARGB(31, 102, 98, 98),
              Color.fromARGB(255, 166, 173, 177),
            ], radius: size.width * 0.1),
          ),
        ],
      ),
    );
  }
}
