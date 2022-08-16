import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:cuib/screens/others_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'me_screen.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _selectedItemColor = Colors.white;
  final _unselectedItemColor = Colors.blueGrey;
  final _selectedBgColor = Colors.blue;
  final _unselectedBgColor = Colors.white;


  int _currentPage = 0;

  Color _getBgColor(int index) =>
      _currentPage == index ? _selectedBgColor : _unselectedBgColor;

  Color _getItemColor(int index) =>
      _currentPage == index ? _selectedItemColor : _unselectedItemColor;

  BottomNavigationBarItem _bottomNavItem({IconData icon, String text, @required index}){
    // return BottomNavigationBarItem(
    //   title: Text(),
    //   icon: Container(
    //     margin: EdgeInsets.all(0.0),
    //     width: double.infinity,
    //     height: kBottomNavigationBarHeight,
    //     color: _getBgColor(index),
    //     child: Column(
    //       children: [
    //       Icon(
    //           icon,
    //         color: _getItemColor(index),
    //         size: 30.0,
    //       ),
    //         Text(
    //           text,
    //           style: TextStyle(
    //             color: _getItemColor(index),
    //           ),
    //         ),
    //     ],
    //     ),
    //   ),
    //
    // );

    return BottomNavigationBarItem(
          title: Text(
            text,
            style: TextStyle(

            ),
          ),
          icon:Icon(
            icon,
            color: _getItemColor(index),
            size: 30.0,
          ),


        );
  }

  @override
  Widget build(BuildContext context) {

    final _kTabPages = <Widget>
    [
      HomeScreen(),
      Center(
        child: Text("Messages"),
      ),
      MeScreen(),
      Center(
        child: Text("Gallery"),
      ),
      OtherScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/logo1.png'),
              backgroundColor: Colors.white,
              radius: 25.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text("CUIB"),
          ],
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context){
            return [
              PopupMenuItem(child: Text("Logout")),
              PopupMenuItem(child: Text("Exit")),
            ];
          },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        type: BottomNavigationBarType.fixed,
        //showUnselectedLabels: true,
        backgroundColor: Colors.blue,
        selectedItemColor: _selectedItemColor,
        unselectedItemColor: _unselectedItemColor,
        currentIndex: _currentPage,
        onTap: (int index){
          setState((){
            _currentPage = index;
          });
        },
        items: [
          _bottomNavItem(
            index: 0,
            icon: LineIcons.home,
            text: "Home",
          ),
          _bottomNavItem(
            index: 1,
            icon: LineIcons.commentDots,
            text: "Messages",
          ),
          _bottomNavItem(
            index: 2,
            icon: LineIcons.userCircle,
            text: "Me",
          ),
          _bottomNavItem(
            index: 3,
            icon: LineIcons.images,
            text: "Gallery",
          ),
          _bottomNavItem(
            index: 4,
            icon: LineIcons.folderOpen,
            text: "Others",
          ),

        ],
      ),
      body: Container(
        margin: EdgeInsets.all(5.0),
          child: _kTabPages[_currentPage],
      ),

    );
  }
}