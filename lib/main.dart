import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp()); //used to initialize and run the app
}

class MyApp extends StatelessWidget { //A widget that does not require mutable state,(never changes)
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(//is the root widget
      debugShowCheckedModeBanner: false, //disables the debug mode banner that appears in the top-right corner
      title: 'store app',
      theme: ThemeData(  //specifies the theme data for the app
       primaryColor: kprimaryColor,
        hintColor:kprimaryColor,
      ),

      home: HomeScreen(),//is the starting point of the app
    );
  }
}

