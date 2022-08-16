import 'package:flutter/material.dart';
import 'package:cuib/components/myCardTile.dart';
import 'package:cuib/constants/constants.dart';


// my reusable card
class OtherScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return ListView(
      children: [
        Text("Others",
          textAlign: TextAlign.center,
          style: kScreenHeading,
        ),
        MyCardTile(
          icon: Icons.school_rounded,
          label: "Scholarship",
        ),
        MyCardTile(
          icon: Icons.people,
          label: "Competitions",
        ),
        MyCardTile(
          icon: Icons.question_answer_rounded,
          label: "Opportunities",
        ),
        MyCardTile(
          icon: Icons.business_center_sharp,
          label: "Job Offers",
        ),
      ],
    );
  }
}





