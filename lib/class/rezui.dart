// class/rezui.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:projectexamui/core/res/app_text_style.dart';
import 'package:projectexamui/model/chat_model.dart';
import 'package:badges/badges.dart' as badges;

class Rez extends StatelessWidget {
  Rez({super.key, required this.chat});
  final List<ch_model> chat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: chat.isEmpty
          ? Container(
              color: Colors.black,
              child: Center(
                child: Text(
                  'No data available',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          : Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: chat.length,
                  itemBuilder: (context, index) => ListTile(
                    title: badges.Badge(
                      badgeStyle: badges.BadgeStyle(
                        badgeColor: Colors.green,
                      ),
                      badgeContent: Text(
                        chat[index].unread_message_count.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 5,
                        ),
                      ),
                      child: Text(
                        chat[index].name,
                        style: headlineTextStyle1,
                      ),
                    ),
                    trailing: Text(
                      chat[index].date,
                      style: styleOfSplashScreen,
                    ),
                    subtitle: Text(
                      chat[index].message,
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(chat[index].image),
                    ),
                  ),
                ),
            ),
          ),
    );
  }
}
