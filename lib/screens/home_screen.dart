import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:cuib/components/resuable_card.dart';
import 'package:cuib/components/newsCard.dart';
import 'package:cuib/constants/constants.dart';
import 'readNews_screen.dart';


// my reusable card
class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return ListView(
      children: [
        //various schools
        Container(
          margin: EdgeInsets.symmetric(vertical: 5.0),
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [

              ReusableCard(
                color: Colors.grey,
                text: "SIT",
                image: AssetImage('images/logo2.png'),
              ),
              ReusableCard(
                color: Colors.green,
                text: "SANR",
                image: AssetImage('images/logo2.png'),
              ),
              ReusableCard(
                color: Colors.blue,
                text: "SB",
                image: AssetImage('images/logo2.png'),
              ),
              ReusableCard(
                color: Colors.teal,
                text: "SENG",
                image: AssetImage('images/logo2.png'),
              ),
              ReusableCard(
                color: Colors.deepOrange,
                text: "HND",
                image: AssetImage('images/logo1.png'),
              ),

            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        SizedBox(
          // The carousel box
            height: 250.0,
            width: 300.0,
            child: Carousel( // the carousel class itself
              images: [
                AssetImage("images/env.jpg"),
                ExactAssetImage("images/cuib-env2.jpg"),
                ExactAssetImage("images/graduation_match.jpeg"),
              ],
              dotColor: Colors.blue,
              autoplayDuration: Duration(seconds: 5),
            )
        ),
        SizedBox(
          height: 10.0,
        ),
        Text("NEWS FEED",
        style: kHeadingTextStyle,
        ),
        NewsCard(
          title: "The Mission and Vision remains the same",
          image: AssetImage('images/president_in_site.jpeg'),
          onPress: (){

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ReadNews(
                        id: 1,
                        title: "The Mission and Vision remains the same",
                      image: 'images/president_in_site.jpeg',

                    ),
                ),
            );
          },
        ),
        NewsCard(
          title: "STUGA offically lauches the STUGA SPORTS TOURNAMENT (SST) which is open to all CUIB, with various sport discipline",
          image: AssetImage('images/env.jpg'),
          onPress: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ReadNews(
                  id: 1,
                  title: "STUGA offically lauches the STUGA SPORTS TOURNAMENT (SST) which is open to all CUIB, with various sport discipline",
                  image: 'images/env.jpg',

                ),
              ),
            );
          },
        ),
        NewsCard(
          title: "A quick talk with the Saints and Scholars party representative",
          image: AssetImage('images/richard-1.png'),
          onPress: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ReadNews(
                  id: 1,
                  title: "A quick talk with the Saints and Scholars party representative",
                  image: 'images/richard-1.png',

                ),
              ),
            );
          },
        ),
        NewsCard(
          title: "CUIB attends the Bishop Installation",
          image: AssetImage('images/logo1.png'),
        ),
        NewsCard(
          title: "A quick tour with the SSP party of CUIB",
          image: AssetImage('images/SSP_logo.jpg'),
        ),

      ],
    );
  }
}

