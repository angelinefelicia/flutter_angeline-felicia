import 'dart:ui';
import 'dart:io';

import 'package:flutter/material.dart';

class PostModel {
  final String caption;
  final DateTime date;
  Color color = Colors.white;
  File? image;

  PostModel({
    required this.caption,
    required this.date,
    required this.color,
    required this.image,
  });
}
