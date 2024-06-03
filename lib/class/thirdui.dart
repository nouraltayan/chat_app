// class/thirdui.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectexamui/color/color_palete.dart';
import 'package:projectexamui/core/res/app_text_style.dart';
import 'package:projectexamui/service/chat_service.dart';



TextEditingController shere = TextEditingController();




class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
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
                          //  color: Color.fromARGB(115, 54, 54, 54),
                           child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 CircleAvatar(backgroundColor: Color.fromARGB(255, 34, 34, 34), child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)),
                  Text("Invite Friends",style: headlineTextStyle,),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: CircleAvatar(backgroundColor:  Color.fromARGB(255, 34, 34, 34),child: Icon(Icons.delete,color: Colors.white,)),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 18),
                      child: Align(alignment: Alignment.center, child: Text("Invite Friends",style: headlineTextStyle,)),
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.only(bottom: 28),
                    child: Align(alignment: Alignment.center, child: Text("     Sign up a friend with your referral \n code and earn \$RIIDE and/or free rides.",style: subtitleTextStyle9,)),
                  ),
                  SizedBox(
                    height: 45,
                    child: TextField(
                      
                      controller: shere,
                       onTap: (){
                        
                        print(shere);
                       },
                      
                      decoration: InputDecoration(
                        hintText: "Share your invite code",
                        hintStyle:styleOfSplashScreen6 ,
                        // labelText: "USERNAME",
                        
                          filled: true,
                        fillColor: bottm,
                        border: OutlineInputBorder(
                        
                          borderRadius: BorderRadius.circular(12),
                        
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
                        padding: const EdgeInsets.only(left: 8 ,right: 8, top:12.0),
                        child: Container(
                          alignment: Alignment.center,
                          
                          height: 45,
                          decoration:  BoxDecoration(
                          color: bottm2,
                        
                          borderRadius: BorderRadius.circular(12),
                        
                        
                                 
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
