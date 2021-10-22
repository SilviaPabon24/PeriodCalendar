import 'dart:async';

import 'package:flutter/material.dart';
import 'authentication.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login.dart';
import 'root_page.dart';


Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp();
    return MaterialApp(
        title: 'Calendar App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          cursorColor:Color(0xff8731DC),
          primaryColor: Color(0xff8731DC),
          accentColor: Color(0xffE7CFFF),
          bottomAppBarColor: Color(0xff120023),
          dividerColor:Color(0xffE7CFFF),
          buttonTheme:ButtonThemeData(
              buttonColor: Color(0xff8731DC)),
          accentColorBrightness: Brightness.dark,
          textTheme:TextTheme(
//            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            subtitle1: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic,color:Color(0xff120023)),
            bodyText1: TextStyle( fontFamily: 'Montserrat'),
          ),

        ),

        home: new RootPage(auth: new Auth())
    );
  }
}

//show pink Color(0xffE7CFFF)