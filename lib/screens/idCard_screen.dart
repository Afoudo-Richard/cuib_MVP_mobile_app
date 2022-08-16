import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

// my reusable card
class IdCard extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('images/logo1.png'),
            )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("CUIB ID CARD",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FlipCard(
                  direction: FlipDirection.HORIZONTAL, // default
                  front: Container(
                    width: 350.0,
                    padding: EdgeInsets.all(10.0),
                    color: Colors.blue,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          child: Align(
                            child: CircleAvatar(
                              radius: 70.0,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('images/richard-1.png'),
                            ),
                          ),
                        ),
                        AttributeValue(
                          attribute: "Name: ",
                          value: "Richard Afoudo Chimezie",
                        ),
                        AttributeValue(
                          attribute: "Matricule: ",
                          value: "17SI-003997",
                        ),
                        AttributeValue(
                          attribute: "School: ",
                          value: "Information Technology",
                        ),
                        AttributeValue(
                          attribute: "Department: ",
                          value: "Mechanical Engineering",
                        ),
                        AttributeValue(
                          attribute: "Program: ",
                          value: "B.Sc.",
                        ),
                        AttributeValue(
                          attribute: "Date of Birth: ",
                          value: "22 October, 1998",
                        ),
                        AttributeValue(
                          attribute: "Sex: ",
                          value: "Male",
                        ),

                      ],
                    ),
                  ),
                  back: Container(
                    width: 350.0,
                    padding: EdgeInsets.all(10.0),
                    color: Colors.blue,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: Image(
                              image: AssetImage('images/qrCode.png'),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}

class AttributeValue extends StatelessWidget {
  final String attribute;
  final String value;
AttributeValue({this.attribute,this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(attribute,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(value,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w100,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

