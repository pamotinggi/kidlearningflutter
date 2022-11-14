import 'package:flutter/material.dart';

class ItemModel{
  late final String name;
  late final String value;
  late final IconData icon;
  late bool accepting;

  ItemModel({required this.name, required this.value, required this.icon, this.accepting=false,});
}