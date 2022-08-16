import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:cuib/components/myCardTile.dart';
import 'package:cuib/components/me_card.dart';
import 'package:cuib/constants/constants.dart';
import 'package:line_icons/line_icons.dart';


// my reusable card
class MeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return ListView(
      children: [
        Text("User",
          textAlign: TextAlign.center,
          style: kScreenHeading,
        ),
        Card(
          child: ListTile(
            leading: Icon(
                Icons.person,
                size: 50.0,
            ),
            title: Text("HI~"),
            trailing: RaisedButton(
              onPressed: (){},
              color: Colors.blue,
              textColor: Colors.white,
              elevation: 5.0,
              child: Text("Login"),
            ),
          ),
        ),
        Card(

          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Wrap(
              children: [

                Me_Items(
                  label: "ID Card",
                  icon: LineIcons.identificationCard,
                  onPress: (){
                    Navigator.pushNamed(context, '/IdCard');
                  },
                ),
                Me_Items(
                  label: "Messages",
                  icon: LineIcons.sms,
                ),

                Me_Items(
                  label: 'Anthem',
                  icon: LineIcons.file,
                ),
                Me_Items(
                  label: 'CoA',
                  icon: LineIcons.calendar,
                ),
                Me_Items(
                  label: 'Academics',
                  icon: LineIcons.graduationCap,
                ),
                Me_Items(
                  label: 'Hymnal',
                  icon: LineIcons.book,
                ),

                Me_Items(
                  label: 'Medical',
                  icon: LineIcons.hospitalAlt,
                ),
                Me_Items(
                  label: "Settings",
                  icon: LineIcons.cog,
                ),
                Me_Items(
                  label: "Exit",
                  icon: LineIcons.chevronCircleRight,
                ),

              ],
            ),
          ),
        ),
        MyCardTile(
            icon: Icons.cast_outlined,
            label: "Feeds",
        ),

      ],
    );
  }
}



