// class/firstui.dart
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectexamui/class/secondui.dart';
import 'package:projectexamui/color/color_palete.dart';
import 'package:projectexamui/core/res/app_text_style.dart';
import 'package:projectexamui/model/user_login_model.dart';
import 'package:projectexamui/service/auth_service.dart';



TextEditingController username = TextEditingController();

class LogInPage extends StatelessWidget {
  LogInPage({super.key});

 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: primary,
        width:double.infinity ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

             Padding(
               padding: const EdgeInsets.only(top: 75.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("r ",style: subtitleTextStyle1,),
                  Text("ii ",style: subtitleTextStyle2,),
                 Text("de",style: subtitleTextStyle1,),
               
               
                  
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 25.0),
               child: Text("welcome to RIIDE",style: headlineTextStyle,),
             ),


             Padding(
              padding: const EdgeInsets.only(left: 8 ,right: 8, top:30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Align(alignment: Alignment.centerLeft, child: Text("U S E R N A M E",style: subtitleTextStyle3,)),
                  ),
                  SizedBox(
                    height: 45,
                    child: TextField(
                      
                                             
                      
                      decoration: InputDecoration(
                        hintText: "Enter your username",
                        hintStyle:styleOfSplashScreen6,
                        // labelText: "USERNAME",
                        
                          filled: true,
                        fillColor: bottm,
                        border: OutlineInputBorder(
                        
                          borderRadius: BorderRadius.circular(10),
                       
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

                  Padding(
              padding: const EdgeInsets.only(left: 8 ,right: 8, top:20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Align(alignment: Alignment.centerLeft, child: Text("P A S S W O R D",style: subtitleTextStyle3,)),
                  ),
                  SizedBox(
                    height: 45,
                    child: TextField(
                      
                      controller: username,
                       
                      
                      decoration: InputDecoration(
                        hintText: "Enter your Password",
                        hintStyle:styleOfSplashScreen6 ,
                        // labelText: "USERNAME",
                        
                          filled: true,
                        fillColor: bottm,
                        border: OutlineInputBorder(
                        
                          borderRadius: BorderRadius.circular(10),
                        
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Remember me",style: styleOfSplashScreen,),
                    Text("Forgot password",style: styleOfSplashScreen1,),
                 
                 
                    
                   ],
                 ),
             ),
            InkWell(
                      onTap: () async {
                        bool status = await AuthSeviceImp().logIn(
              UserLoginModel(username: username.text));
                      
                        if (status) {
                        
                          usernew=username.text;
                         ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("hello $usernew "),
                backgroundColor: Colors.green,
                behavior: SnackBarBehavior.floating,
              ),
            );
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => secandp(),
                ));
                        } else {
            ScaffoldMessenger.of(context).showSnackBar(
            const  SnackBar(
                content: Text("Failed to Log In"),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
              ),
            );
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8 ,right: 8, top:20.0),
                        child: Container(
                          alignment: Alignment.center,
                          
                          height: 45,
                          decoration:  BoxDecoration(
                          color: bottm2,
                        
                          borderRadius: BorderRadius.circular(10),
                        
                        
                                 
                          ),
                          child: Text("Sing in",style:styleOfSplashScreen2,),
                        ),
                      )
                      ),
        
          Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Don't have an account ?",style: styleOfSplashScreen6,),
                    Text(" Sing up",style: styleOfSplashScreen1,),
                 
                 
                    
                   ],
                 ),
             ),
                        
            
          ],
          
        ),
      ),
    
    );
  }
}
String usernew=" ";