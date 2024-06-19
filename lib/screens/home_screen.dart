import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/constants.dart';

import '../widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});// is the constructor for the HomeScreen widget.

  @override
  Widget build(BuildContext context) {
    return Scaffold(//Implements the basic Material Design visual layout structure,including the app bar and body
      backgroundColor: kprimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),//invoke HomeBody class in the body
    );
  }
      AppBar homeAppBar(){ //method defines the app bar
  return AppBar(
        elevation: 0,
        title: Text(
          'Welcome to my book store',
          
        ),
        centerTitle: false,
        actions: [// Adds action widgets to the app bar
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),//IconButton with a menu icon.
        ],
      );
}
  }

