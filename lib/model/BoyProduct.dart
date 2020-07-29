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
      title: "Suite",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/boyimages/boy1.png",
      color: Colors.blueGrey),
  Product(
      id: 2,
      title: "Jacket",
      price: 200,
      size: 8,
      description: dummyText,
      image: "assets/boyimages/boy2.png",
      color: Colors.cyan.shade600),
  Product(
      id: 3,
      title: "Sport Shirt",
      price: 250,
      size: 10,
      description: dummyText,
      image: "assets/boyimages/boy3.png",
      color: Colors.teal.shade200),
  Product(
      id: 4,
      title: "Windbreaker Jacket",
      price: 149,
      size: 11,
      description: dummyText,
      image: "assets/boyimages/boy4.png",
      color: Colors.yellow.shade300),
  Product(
      id: 5,
      title: "Jersey Jacket",
      price: 257,
      size: 12,
      description: dummyText,
      image: "assets/boyimages/boy5.png",
      color: Colors.orangeAccent),
  Product(
    id: 6,
    title: "Shirt",
    price: 390,
    size: 12,
    description: dummyText,
    image: "assets/boyimages/boy6.png",
    color: Colors.pink.shade300,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
