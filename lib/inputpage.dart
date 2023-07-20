// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bmi/buttoncreate.dart';
import 'package:bmi/calculating.dart';
import 'package:bmi/inside_icons.dart';
import 'package:bmi/page1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'allcardsdetails.dart';

Color defaultcolor = Color(0xFF1D1E33);
Color afterselectcolor = Color(0xFF111328);
Color bottomboxcolor = Color(0xFFEB1555);
double bottomboxborderheight = 70;

enum gender {
  male,
  female;
}

void data(int data) {
  if (data < 0) {
    data = 0;
  }
}

class input_page extends StatefulWidget {
  const input_page({super.key});

  @override
  State<input_page> createState() => _input_pageState();
}

class _input_pageState extends State<input_page> {
  int data = 12;
  int weight = 5;
  int age = 0;
  Color aftertouchmale = afterselectcolor;
  Color aftertouchfemale = afterselectcolor;
  void gender(int num) {
    if (num == 1) {
      if (aftertouchmale == afterselectcolor) {
        aftertouchmale = defaultcolor;
        aftertouchfemale = afterselectcolor;
      } else {
        aftertouchmale = afterselectcolor;
      }
    }
    if (num == 2) {
      if (aftertouchfemale == afterselectcolor) {
        aftertouchfemale = defaultcolor;
        aftertouchmale = afterselectcolor;
      } else {
        aftertouchfemale = afterselectcolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      gender(1);
                    });
                  },
                  child: allcardsdetails(
                    colour: aftertouchmale,
                    cardschild: insideIcons(
                      Iconi: FontAwesomeIcons.mars,
                      gender: 'Male',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      gender(2);
                    });
                  },
                  child: allcardsdetails(
                    colour: aftertouchfemale,
                    cardschild: insideIcons(
                      Iconi: FontAwesomeIcons.venus,
                      gender: 'Female',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: allcardsdetails(
            colour: defaultcolor,
            cardschild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HEIGHT",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      "$data",
                      style:
                          TextStyle(fontSize: 70, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "CM",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15)),
                  child: Slider(
                    min: 10,
                    max: 200,
                    value: data.toDouble(),
                    onChanged: (double newvalue) {
                      setState(() {
                        data = newvalue.toInt();
                      });
                    },
                    activeColor: Colors.white,
                    inactiveColor: Colors.blueGrey,
                    thumbColor: Colors.pinkAccent,
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: allcardsdetails(
                colour: defaultcolor,
                cardschild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "WEIGHT",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$weight",
                      style:
                          TextStyle(fontSize: 60, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyButton(
                          iconn: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyButton(
                          iconn: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                child: allcardsdetails(
                  colour: defaultcolor,
                  cardschild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$age",
                        style: TextStyle(
                            fontSize: 60, fontWeight: FontWeight.w900),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyButton(
                            iconn: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MyButton(
                            iconn: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(
                                () {
                                  age--;
                                },
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Calculator re = Calculator(height: data, weight: weight);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => page1(
                    bmiresult: re.bmiCalculate(),
                    resulttext: re.Getresult(),
                    interpre: re.getmessages()),
              ),
            );
          },
          child: Container(
            height: bottomboxborderheight,
            width: double.infinity,
            margin: EdgeInsets.only(right: 15, left: 15, bottom: 5),
            decoration: BoxDecoration(
              color: bottomboxcolor,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Text(
              "Calculate",
              textAlign: TextAlign.center,
              textWidthBasis: TextWidthBasis.longestLine,
              style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
