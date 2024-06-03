// class/secondui.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectexamui/class/thirdui.dart';
import 'package:projectexamui/color/color_palete.dart';
import 'package:projectexamui/core/res/app_text_style.dart';
import 'package:projectexamui/service/chat_service.dart';



TextEditingController shea = TextEditingController();



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
                    // print(username.text);
                                 },
                                 decoration: InputDecoration(
                    
                      hintText: "Search Here",
                     hintStyle:styleOfSplashScreen6,
                      prefixIcon: Icon(Icons.search,color: bottm2,),
                suffix: Icon(Icons.keyboard_voice_outlined,color: Colors.grey,),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                               ),
                 ),
               ),
            Expanded(
              child: FutureBuilder(
                future :  getData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return  ListView.builder(
                // scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) => 
                ListTile(
                
                
                  title: Text(
                      "${snapshot.data![index].name}",
                      style: headlineTextStyle,
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
              );
                   
                    
                  } else {
                    return CircularProgressIndicator(
                      strokeWidth: 1,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      
      //  ListView.builder(
      //   // physics: BouncingScrollPhysics(),
      //   itemCount: names.length,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       onTap: () {
      //         ScaffoldMessenger.of(context).showSnackBar(
      //           SnackBar(
      //             dismissDirection: DismissDirection.horizontal,
      //             showCloseIcon: true,
      //             behavior: SnackBarBehavior.floating,
      //             action: SnackBarAction(label: 'active', onPressed: () {}),
      //             backgroundColor: Colors.green,
      //             content: Text(
      //               names[index],
      //             ),
      //           ),
      //         );
      //       },
      //       leading: CircleAvatar(
      //         child: Text((index + 1).toString()),
      //       ),
      //       title: Text(
      //         names[index],
      //       ),
      //     );
      //   },
      // ),
    );
  }
}


PageController pageController = PageController();
