import 'package:flutter/material.dart';

class Item {
  final String name;
  final int price;
  final String description;
  final int amount;

  Item({
    required this.name,
    required this.price,
    required this.description,
    required this.amount,
  });
}

class ItemList {
  static final List<Item> _items = [];

  static void addItem(Item item){
    _items.add(item);
  }
  
  static List<Item> get items => _items;
}