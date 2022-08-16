import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'screens/idCard_screen.dart';
import 'screens/readNews_screen.dart';

main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Poppins',
          bottomNavigationBarTheme: BottomNavigationBarThemeData(

          ),
      ),
      initialRoute: '/',
      routes: {
        '/' : (context)=> MainScreen(),
        '/IdCard': (context) => IdCard(),
        '/ReadNews': (context) => ReadNews(),
      },
    );
  }
}



