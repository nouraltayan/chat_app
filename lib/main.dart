// main.dart

import 'package:flutter/material.dart';
import 'package:projectexamui/class/firstui.dart';
import 'package:projectexamui/class/secondui.dart';
import 'package:projectexamui/class/thirdui.dart';
import 'package:projectexamui/core/config/get_it_config.dart';
import 'package:shared_preferences/shared_preferences.dart';


String usernew=core.get<SharedPreferences>().getString('username').toString();
String name=core.get<SharedPreferences>().getString('username').toString();

void main() {
   setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
 

  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,
         
       home:
    core.get<SharedPreferences>().getString('username')==null
            ?
             LogInPage()
            : secandp()
      );
    
  }
}





