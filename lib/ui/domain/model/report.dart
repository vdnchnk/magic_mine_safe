import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReportEntity {
  final String id;
  final String image;
  final double? long;
  final double? lat;
  final String comment;
  final String desc;
  final DateTime dateTime;

  ReportEntity({
    required this.id,
    required this.image,
    required this.long,
    required this.lat,
    required this.comment,
    required this.desc,
    required this.dateTime,
  });

  String get date => DateFormat.yMMMd('uk_UA').format(dateTime);

  factory ReportEntity.fromJson(Map<String, dynamic> json) => ReportEntity(
        id: json['id'],
        image: json['image'],
        long: double.tryParse(json['long']),
        lat: double.tryParse(json['lat']),
        comment: json['comment'],
        desc: json['desc'],
        dateTime: DateTime.fromMicrosecondsSinceEpoch(
          (json['date_time'] as Timestamp).microsecondsSinceEpoch,
        ),
      );
}
