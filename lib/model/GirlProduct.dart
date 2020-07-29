import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Gored Skirt",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/girlimages/girl1.png",
      color: Colors.red.shade300),
  Product(
      id: 2,
      title: "Jean Skirt",
      price: 200,
      size: 8,
      description: dummyText,
      image: "assets/girlimages/girl2.png",
      color: Colors.blue.shade200),
  Product(
      id: 3,
      title: "Mini Skirt",
      price: 250,
      size: 10,
      description: dummyText,
      image: "assets/girlimages/girl3.png",
      color: Colors.brown.shade200),
  Product(
      id: 4,
      title: "Layered Skirt",
      price: 149,
      size: 11,
      description: dummyText,
      image: "assets/girlimages/girl4.png",
      color: Colors.lightBlue.shade100),
  Product(
      id: 5,
      title: "Tennis Skirt",
      price: 257,
      size: 12,
      description: dummyText,
      image: "assets/girlimages/girl5.png",
      color: Colors.blueGrey),
  Product(
    id: 6,
    title: "Circle Skirt",
    price: 390,
    size: 12,
    description: dummyText,
    image: "assets/girlimages/girl6.png",
    color: Colors.amberAccent.shade100,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";