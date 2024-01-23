import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class RowExperience extends StatelessWidget {
  RowExperience(
      {super.key,
      required this.title,
      this.experienceText1,
      this.experienceText2,
      this.experienceText3,
      this.experienceText4,
      this.experienceText5,
      this.experienceText6});
  String title;
  String? experienceText1;
  String? experienceText2;
  String? experienceText3;
  String? experienceText4;
  String? experienceText5;
  String? experienceText6;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: size.width * 0.5,
            padding: EdgeInsets.only(left: 50),
            child: FadeInUp(
              duration: Duration(seconds: 3),
              child: Text(
                title,
                style: TextStyle(fontSize: 40.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(20),
            width: size.width * 0.5,
            // padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Alineación al comienzo del eje cruzado
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                experienceText1 != null
                    ? FadeInLeft(
                        duration: Duration(seconds: 3),
                        child: Text(
                          experienceText1.toString(),
                          style: TextStyle(fontSize: 20),
                        ))
                    : Text(""),
                experienceText2 != null
                    ? FadeInLeft(
                        duration: Duration(seconds: 3),
                        child: Text(
                          experienceText2.toString(),
                          style: TextStyle(fontSize: 20),
                        ))
                    : Text(""),
                experienceText3 != null
                    ? FadeInLeft(
                        duration: Duration(seconds: 3),
                        child: Text(
                          experienceText3.toString(),
                          style: TextStyle(fontSize: 20),
                        ))
                    : Text(""),
                experienceText4 != null
                    ? FadeInLeft(
                        duration: Duration(seconds: 3),
                        child: Text(
                          experienceText4.toString(),
                          style: TextStyle(fontSize: 20),
                        ))
                    : Text(""),
                experienceText5 != null
                    ? FadeInLeft(
                        duration: Duration(seconds: 3),
                        child: Text(
                          experienceText5.toString(),
                          style: TextStyle(fontSize: 20),
                        ))
                    : Text(""),
                experienceText6 != null
                    ? FadeInLeft(
                        duration: Duration(seconds: 3),
                        child: Text(
                          experienceText6.toString(),
                          style: TextStyle(fontSize: 20),
                        ))
                    : Text(""),
              ],
            ),
          ),
        ),
        Container(
          width: 20,
        )
      ],
    );
  }
}
