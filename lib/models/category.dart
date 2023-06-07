import 'package:flutter/material.dart';

class Category{
  Category({required this.id, required this.title, this.color = Colors.blueAccent, required this.icon, required this.imageURL});

  final String id;
  final String title;
  final String imageURL;
  final IconData icon;
  final Color color; 
}