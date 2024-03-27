import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ProfileTextPage extends StatelessWidget {
  ProfileTextPage(
      {super.key,
      required this.title,
      this.subtitle1,
      this.subtitle2,
      this.subtitle3});

  String title;
  String? subtitle1;
  String? subtitle2;
  String? subtitle3;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        SlideInDown(
          duration: Duration(seconds: 2),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Theme.of(context).focusColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                title.toString(),
                style: TextStyle(
                  fontFamily: "Courier New",
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: size.width,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).dividerColor,
          ),
          child: SingleChildScrollView(
            child: BounceInUp(
              duration: Duration(seconds: 3),
              child: Column(
                children: [
                  subtitle1 != null
                      ? Text(
                          textAlign: TextAlign.left,
                          subtitle1.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Courier New',
                            color: Theme.of(context).primaryColor
                          ),
                        )
                      : Container(),
                     
                  subtitle2 != null
                      ? Text(
                          subtitle2.toString(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Courier New',
                                                        color: Theme.of(context).primaryColor

                          ),
                        )
                      : Container(),
                  subtitle3 != null
                      ? Text(
                          textAlign: TextAlign.left,
                          subtitle3.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Courier New',
                                                        color: Theme.of(context).primaryColor

                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
