import 'package:flutter/material.dart';
import 'package:cuib/constants/constants.dart';


class MyCardTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function onPress;

  MyCardTile({@required this.icon, @required this.label, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Card(
        child: ListTile(
          leading: Icon(icon, size: 30.0,),
          title: Text(label,
            style: kHeadingTile,
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),

      ),
    );
  }
}