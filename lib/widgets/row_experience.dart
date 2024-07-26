import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class RowExperience extends StatelessWidget {
  RowExperience({
    Key? key,
    required this.title,
    this.experienceText1,
    this.experienceText2,
    this.experienceText3,
    this.experienceText4,
    this.experienceText5,
    this.experienceText6,
  }) : super(key: key);

  final String title;
  final String? experienceText1;
  final String? experienceText2;
  final String? experienceText3;
  final String? experienceText4;
  final String? experienceText5;
  final String? experienceText6;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size.width * 0.5,
          padding: EdgeInsets.only(left: 50),
          child: FadeInUp(
            duration: Duration(seconds: 3),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 40.0,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
        SizedBox(height: 100),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Theme.of(context).dividerColor,
            ),
            padding: EdgeInsets.all(20),
            width: size.width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (experienceText1 != null)
                  FadeInLeft(
                    duration: Duration(seconds: 3),
                    child: Text(
                      experienceText1!,
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                if (experienceText2 != null)
                  FadeInLeft(
                    duration: Duration(seconds: 3),
                    child: Text(
                      experienceText2!,
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                if (experienceText3 != null)
                  FadeInLeft(
                    duration: Duration(seconds: 3),
                    child: Text(
                      experienceText3!,
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                if (experienceText4 != null)
                  FadeInLeft(
                    duration: Duration(seconds: 3),
                    child: Text(
                      experienceText4!,
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                if (experienceText5 != null)
                  FadeInLeft(
                    duration: Duration(seconds: 3),
                    child: Text(
                      experienceText5!,
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                if (experienceText6 != null)
                  FadeInLeft(
                    duration: Duration(seconds: 3),
                    child: Text(
                      experienceText6!,
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}