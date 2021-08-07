import 'package:flutter/cupertino.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final int price;
  final String imageUrl;
  bool isFav;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
    this.isFav = false,
  });
}
