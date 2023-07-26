import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, required this.image, required this.name});
  String image;
  String name;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 255, 255, 255),

        ),
        width: 250,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(
              image,
              fit: BoxFit.contain,
              height: 150,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}