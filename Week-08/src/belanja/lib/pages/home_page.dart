import 'package:flutter/material.dart';
import 'package:navigasi/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 5000)
  ];
  
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
