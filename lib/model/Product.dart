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
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag1.png",
      color: Colors.brown),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 200,
      size: 8,
      description: dummyText,
      image: "assets/images/bag2.png",
      color: Colors.orangeAccent),
  Product(
      id: 3,
      title: "Hang Top",
      price: 250,
      size: 10,
      description: dummyText,
      image: "assets/images/bag3.png",
      color: Colors.red[600]),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 149,
      size: 11,
      description: dummyText,
      image: "assets/images/bag4.png",
      color: Colors.red[300]),
  Product(
      id: 5,
      title: "Office Code",
      price: 257,
      size: 12,
      description: dummyText,
      image: "assets/images/bag5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 390,
    size: 12,
    description: dummyText,
    image: "assets/images/bag6.png",
    color: Colors.blueGrey,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
