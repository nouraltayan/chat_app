// class/thirdui.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectexamui/color/color_palete.dart';
import 'package:projectexamui/core/res/app_text_style.dart';
import 'package:projectexamui/service/chat_service.dart';



TextEditingController username = TextEditingController();




class third extends StatelessWidget {
  const third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body:Container(
        color: Colors.black,
        child: Column(
          children: [
               Container(
                           width: double.maxFinite,
                           height: 150,
                           color: Colors.black45,
                           child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 CircleAvatar(backgroundColor: const Color.fromARGB(255, 58, 57, 57), child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)),
                  Text("Invite Friends",style: headlineTextStyle,),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: CircleAvatar(backgroundColor: const Color.fromARGB(255, 58, 57, 57),child: Icon(Icons.delete,color: Colors.white,)),
                     ),
                     Text("K-Supermarket\n Ruokaniity")
                   ],
                 )
               ],
                           ),
                       
                         ),
              
              Container(
                          width: double.maxFinite,
                          height: 200,
                          alignment: Alignment.topCenter,
                         
                          decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.asset(
              'asset/image/rtworkremovebgpreview.png',
              fit: BoxFit.fitWidth,
                          ).image)),
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
                        hintText: "Share your invite code",
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
          
            InkWell(
                      onTap: () async {
                      
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
                          child: Text("invite Friends",style:styleOfSplashScreen2,),
                        ),
                      )
                      ),
          ],
        ),
      ),
       
     
    );
  }
}


PageController pageController = PageController();
