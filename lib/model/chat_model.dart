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
  ch_model({
    required this.date,
    required this.image,
    required this.name,
    required this.message,
  });

  ch_model copyWith({
    String? date,
    String? image,
    String? name,
    String? message,
  }) {
    return ch_model(
      date: date ?? this.date,
      image: image ?? this.image,
      name: name ?? this.name,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'image': image,
      'name': name,
      'message': message,
    };
  }

  factory ch_model.fromMap(Map<String, dynamic> map) {
    return ch_model(
      date: map['date'] as String,
      image: map['image'] as String,
      name: map['name'] as String,
      message: map['message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ch_model.fromJson(String source) => ch_model.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ch_model(date: $date, image: $image, name: $name, message: $message)';
  }

  @override
  bool operator ==(covariant ch_model other) {
    if (identical(this, other)) return true;
  
    return 
      other.date == date &&
      other.image == image &&
      other.name == name &&
      other.message == message;
  }

  @override
  int get hashCode {
    return date.hashCode ^
      image.hashCode ^
      name.hashCode ^
      message.hashCode;
  }
}
