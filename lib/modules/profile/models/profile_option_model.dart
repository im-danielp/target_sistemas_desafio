import 'package:flutter/material.dart';

class ProfileOptionModel {
  final String title;
  final IconData icon;
  final VoidCallback action;

  ProfileOptionModel({
    required this.title,
    required this.icon,
    required this.action,
  });
}
