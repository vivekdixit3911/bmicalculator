// ignore_for_file: use_key_in_widget_constructors

import 'package:bmi/allcardsdetails.dart';
import 'package:bmi/inputpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: camel_case_types
class page1 extends StatelessWidget {
  const page1(
      {required this.bmiresult,
      required this.resulttext,
      required this.interpre});
  final String bmiresult;
  final String resulttext;
  final String interpre;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Icon(FontAwesomeIcons.faceKiss),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "YOUR RESULT",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 55),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: allcardsdetails(
                colour: defaultcolor,
                cardschild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      resulttext,
                      style: const TextStyle(
                        color: Color.fromARGB(253, 6, 255, 1),
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Text(
                      bmiresult,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 247, 245, 245),
                        fontWeight: FontWeight.w900,
                        fontSize: 90,
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 15),
                      child: Text(
                        interpre,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 247, 245, 245),
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 15),
                      child: Text(
                        "khaye raho",
                        style: TextStyle(
                          color: Color.fromARGB(255, 247, 245, 245),
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: bottomboxborderheight,
                        width: double.infinity,
                        margin: const EdgeInsets.only(
                            right: 15, left: 15, bottom: 5),
                        decoration: BoxDecoration(
                          color: bottomboxcolor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: const Text(
                          " AGAIN!",
                          textAlign: TextAlign.center,
                          textWidthBasis: TextWidthBasis.longestLine,
                          style: TextStyle(
                              fontSize: 55,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
