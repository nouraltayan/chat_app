// class/secondui.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectexamui/class/rezui.dart';
import 'package:projectexamui/class/thirdui.dart';
import 'package:projectexamui/color/color_palete.dart';
import 'package:projectexamui/core/res/app_text_style.dart';
import 'package:projectexamui/model/chat_model.dart';
import 'package:projectexamui/service/chat_service.dart';
import 'package:badges/badges.dart' as badges;



TextEditingController shea = TextEditingController();

String sherac = " ";
List<ch_model> nameshae=[];


class secandp extends StatelessWidget {
  const secandp({super.key});

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
                 InkWell( onTap: (){
                    Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => third(),
                ));
                 } ,
                  
                  child: CircleAvatar(backgroundColor: const Color.fromARGB(255, 58, 57, 57), child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,))),
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
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  height: 45,
                   child: TextField(
                    
                                 controller: shea,
                                 onChanged: (value) {
                    sherac=value;
                                 },
                                  style: TextStyle(
                color: Colors.white, 
              ),
                                 decoration: InputDecoration(
               
                      hintText: "Search here",
                     hintStyle:styleOfSplashScreen6,
                    counterStyle:styleOfSplashScreen6 ,
                      prefixIcon: Icon(Icons.search,color: bottm2,),
                suffixIcon: Icon(Icons.keyboard_voice_outlined,color: Colors.grey,),
               
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                               ),
                 ),
               ),
             
                Align(
              alignment: Alignment.bottomRight,
               child: Padding(
                 padding: const EdgeInsets.only(top: 8.0,right: 18,
                 bottom: 8),
                 child: MaterialButton(onPressed: (){
                  List<ch_model> re_sh_na = [];
              print(chat_app);
                  print(sherac);
                 for (ch_model names in chat_app) {
                print(names.message );
                  if (names.name == sherac) {
                
                    re_sh_na.add(names);
                }
                 if (names.message == sherac) {
                        
                    re_sh_na.add(names);
                }
              }
                 print(re_sh_na);
                    Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Rez(chat: re_sh_na,),
                
              ));
                
                 

                 },
                                child: Text("Ser_name_contan")   , color: Colors.green,textColor: Colors.white,),
               ),
             ),
            FutureBuilder(
              future :  getData(),
              builder: (context, snapshot) {
                
                if (snapshot.hasData) {
            
                  return  Expanded(
                       flex: 9,
                    child: ListView.builder(
                                    // scrollDirection: Axis.horizontal,
                                    itemCount: snapshot.data!.length,
                                    itemBuilder: (context, index) => 
                                    ListTile(
                                    
                                      title:badges.Badge(
                                    badgeStyle: badges.BadgeStyle(
                      // shape: badges.BadgeShape.square,
                      badgeColor: Colors.green,),
                      
                     badgeContent: Text(
                                    snapshot.data![index].unread_message_count.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 5,
                                    
                                    ),
                                  ),
                    child: Text(
                        "${snapshot.data![index].name}",
                        style: headlineTextStyle1,
                      ),
                                      ),
                                       trailing: Text(
                      "${snapshot.data![index].date}",
                      style: styleOfSplashScreen,
                      
                    ),
                      subtitle: Text(
                      "${snapshot.data![index].message}",
                      
                    ),
                                       leading: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(snapshot.data![index].image),
                                  ),
                    ),
                                  ),
                  );
                 
                  
                } else {
                  return CircularProgressIndicator(
                 
                  );
                }
              },
            ),
                Container(height :15,color: Colors.black,)

          ],
        ),
        
        
      ),
     
    );
  }
}



