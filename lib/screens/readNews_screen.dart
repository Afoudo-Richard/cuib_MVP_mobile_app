import 'package:flutter/material.dart';
import 'package:cuib/components/myCardTile.dart';
import 'package:cuib/constants/constants.dart';


// my reusable card
class ReadNews extends StatelessWidget{
  final int id;
  final String title;
  final String image;
  ReadNews({@required this.id, @required this.title, @required this.image});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("CUIB") ,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Text(
              "3 hours ago / administration",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13.0
              ),

            ),
            SizedBox(height: 15.0,),
            Image(image: AssetImage(image)),
            SizedBox(height: 15.0,),
            Text(
                '''As for my portfolio done, I have learnt The important of calculating the big O notation of an algorithm as it lets you determine whether to use it or not of help you know or look of better ways to improve on the algorithms. I have learnt how to implement the various data structures such as Trees, LinkedList, Arrays. I have also learnt how to implement my own data structures to solve problems in a simple and concise manner. I have also learnt how the implication of searching and sorting algorithms helps us in as software engineers to better build our logical minds.
                
                As for my portfolio done, I have learnt The important of calculating the big O notation of an algorithm as it lets you determine whether to use it or not of help you know or look of better ways to improve on the algorithms. I have learnt how to implement the various data structures such as Trees, LinkedList, Arrays. I have also learnt how to implement my own data structures to solve problems in a simple and concise manner. I have also learnt how the implication of searching and sorting algorithms helps us in as software engineers to better build our logical minds
                  ''',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );

  }
}





