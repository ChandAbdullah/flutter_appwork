import 'package:flutter/material.dart';

class userData {
  final String imagePath;
  final String name;
  final String email;

  const userData({
    required this.imagePath,
    required this.name,
    required this.email,
  });
}

class selectionData {
  final IconData icon;
  final IconData selectedIcon;
  final String text;
  final int notifications;

  const selectionData({
    required this.icon,
    required this.selectedIcon,
    required this.text,
    required this.notifications,
  });
}
