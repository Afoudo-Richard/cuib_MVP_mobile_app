import 'package:flutter/material.dart';


// my reusable card
class ReusableCard extends StatelessWidget{
  final Color color;
  final ImageProvider<Object> image;
  final Function onPress;
  final String text;

  ReusableCard({@required this.color,this.text,this.image, this.onPress});
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onPress,
      child: Container(

        margin: EdgeInsets.only(right: 5.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image(
                image: image,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}