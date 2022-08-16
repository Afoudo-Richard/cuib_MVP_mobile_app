import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final ImageProvider<Object> image;
  final String title;
  final Function onPress;
  NewsCard({this.image, this.title, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.symmetric(vertical: 3.0),
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Image(
                  image: image,
                  fit: BoxFit.contain,
                )
            ),
            SizedBox(width: 4.0,),
            Expanded(
                flex: 2,
                child: Text(title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                )
            )
          ],
        ),
      ),
    );
  }
}