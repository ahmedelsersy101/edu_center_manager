import 'package:flutter/material.dart';

class DrawerItemModel {
  const DrawerItemModel({required this.title, required this.icon, this.onTap});
  final void Function()? onTap;
  final String title;
  final IconData icon;
}
