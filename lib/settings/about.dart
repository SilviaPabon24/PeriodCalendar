import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';


class About extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 16.0);
    TextStyle sub_heading_style = style.copyWith(color: Color(0xff120023), fontWeight: FontWeight.bold,fontSize: 17);
    TextStyle paragraph=TextStyle(fontFamily: 'Montserrat', fontSize: 16.0, color: Colors.black87);
    final  privacy_body_text=RichText(
        text:TextSpan(
            children:<TextSpan>[
              TextSpan(
                  style:TextStyle(fontFamily: 'Montserrat', fontSize: 18.0, color: Color(0xff120023), fontWeight: FontWeight.bold),
                  text:"About Calendar\n\n"
              ),
              TextSpan(
                  style: paragraph,
                  text:"Calendar is A menstrual management application that is available for android systems. The app helps you track your period days and your symptoms "
                      "whule ensuring the hirest level of security, privacy and accuracy.\n\n"
                      "This is an open source project, we do not charge for anything and aren't paid to develop the app.\n\n"

              ),

            ]));

    return Scaffold(
        appBar: AppBar(
            title:Text("Privacy Policy")
        ),
        body:ListView(
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            children:<Widget>[privacy_body_text]
        )
    );

  }
}

//_launchURL() async {
//  const url = 'https://flutter.dev';
//  if (await canLaunch(url)) {
//    await launch(url);
//  } else {
//    throw 'Could not launch $url';
//  }