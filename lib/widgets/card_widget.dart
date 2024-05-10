import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, required this.image, required this.name});
  String image;
  String name;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      width: _width*0.4,
      // height: _height*0.,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Image.asset(
            image,
            fit: BoxFit.contain,
            height: _height*0.2,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Center(
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
