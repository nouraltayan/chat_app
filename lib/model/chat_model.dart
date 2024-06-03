// model/chat_model.dart
// ignore_for_file: public_member_api_docs, sort_constructors_first// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/foundation.dart';

class ch_model {

  String date;
  String image;
  String name;
  String message;
  num unread_message_count; 
  ch_model({
    required this.date,
    required this.image,
    required this.name,
    required this.message,
    required this.unread_message_count,
  });

  ch_model copyWith({
    String? date,
    String? image,
    String? name,
    String? message,
    num? unread_message_count,
  }) {
    return ch_model(
      date: date ?? this.date,
      image: image ?? this.image,
      name: name ?? this.name,
      message: message ?? this.message,
      unread_message_count: unread_message_count ?? this.unread_message_count,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'image': image,
      'name': name,
      'message': message,
      'unread_message_count': unread_message_count,
    };
  }

  factory ch_model.fromMap(Map<String, dynamic> map) {
    return ch_model(
      date: map['date'] as String,
      image: map['image'] as String,
      name: map['name'] as String,
      message: map['message'] as String,
      unread_message_count: map['unread_message_count'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory ch_model.fromJson(String source) => ch_model.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ch_model(date: $date, image: $image, name: $name, message: $message, unread_message_count: $unread_message_count)';
  }

  @override
  bool operator ==(covariant ch_model other) {
    if (identical(this, other)) return true;
  
    return 
      other.date == date &&
      other.image == image &&
      other.name == name &&
      other.message == message &&
      other.unread_message_count == unread_message_count;
  }

  @override
  int get hashCode {
    return date.hashCode ^
      image.hashCode ^
      name.hashCode ^
      message.hashCode ^
      unread_message_count.hashCode;
  }
}
