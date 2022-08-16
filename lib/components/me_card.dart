import 'package:flutter/material.dart';

class Me_Items extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function onPress;
  Me_Items({this.icon, this.label, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(13.0),
        child: Column(
          children: [
            Icon(icon, size: 40.0,),
            SizedBox(height: 3.0,),
            Text(label,
              style: TextStyle(
                  fontSize: 15.0
              ),
            )
          ],
        ),
      ),
    );
  }
}