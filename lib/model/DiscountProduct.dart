import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;
  final String size;
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
      title: "T-Shirt",
      price: 234,
      size: "S, M, L",
      description: dummyText,
      image: "assets/discountimages/discount1.png",
      color: Colors.deepOrange.shade300),
  Product(
      id: 2,
      title: "Shirt",
      price: 200,
      size: "S, M, L",
      description: dummyText,
      image: "assets/discountimages/discount2.png",
      color: Colors.brown.shade300),
  Product(
      id: 3,
      title: "Baby Onesie",
      price: 250,
      size: "Free Size",
      description: dummyText,
      image: "assets/discountimages/discount3.png",
      color: Colors.cyan.shade200),
  Product(
      id: 4,
      title: "Baby Dress",
      price: 149,
      size: "Free Size",
      description: dummyText,
      image: "assets/discountimages/discount4.png",
      color: Colors.blueGrey),
  Product(
      id: 5,
      title: "Jean Skirt",
      price: 257,
      size: "S, M, L",
      description: dummyText,
      image: "assets/discountimages/discount5.png",
      color: Colors.blue.shade300),
  Product(
    id: 6,
    title: "Mini Skirt",
    price: 390,
    size: "S, M, L",
    description: dummyText,
    image: "assets/discountimages/discount6.png",
    color: Colors.purple.shade200,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
