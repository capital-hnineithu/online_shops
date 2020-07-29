import 'package:auth_login/model/GirlProduct.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function onPressed;
  const ItemCard({Key key, this.product, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(defaultPadding / 2),
              margin: EdgeInsets.all(5),
              width: 160,
              height: 180,
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)),
              child:
                  Hero(tag: '${product.id}', child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding / 4),
            child: Text(
              product.title,
              style: TextStyle(
                color: textLightColor,
              ),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
