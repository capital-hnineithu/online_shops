import 'package:auth_login/constants.dart';
import 'package:flutter/material.dart';

import '../model/BoyProduct.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Men Clothes',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: 'Price\n'),
                TextSpan(
                    text: '\$${product.price}',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ])),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                  child: Hero(
                tag: '${product.id}',
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
