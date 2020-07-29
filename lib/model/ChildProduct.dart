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
      title: "Baby dress",
      price: 234,
      size: "Free Size",
      description: dummyText,
      image: "assets/childimages/child1.png",
      color: Colors.green.shade200),
  Product(
      id: 2,
      title: "Baby Coverall",
      price: 200,
      size: "Free Size",
      description: dummyText,
      image: "assets/childimages/child2.png",
      color: Colors.blueGrey),
  Product(
      id: 3,
      title: "Baby Onesie",
      price: 250,
      size: "Free Size",
      description: dummyText,
      image: "assets/childimages/child3.png",
      color: Colors.deepOrange.shade200),
  Product(
      id: 4,
      title: "Romper",
      price: 149,
      size: "Free Size",
      description: dummyText,
      image: "assets/childimages/child4.png",
      color: Colors.red.shade200),
  Product(
      id: 5,
      title: "Wearable Blanket",
      price: 257,
      size: "Free Size",
      description: dummyText,
      image: "assets/childimages/child5.png",
      color: Colors.purple.shade200),
  Product(
    id: 6,
    title: "Singlet",
    price: 390,
    size: "Free Size",
    description: dummyText,
    image: "assets/childimages/child6.png",
    color: Colors.brown.shade300,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
