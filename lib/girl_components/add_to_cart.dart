import 'package:auth_login/constants.dart';
import 'package:auth_login/model/GirlProduct.dart';
import 'package:flutter/material.dart';


class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: defaultPadding),
            width: 58,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: product.color),
                borderRadius: BorderRadius.circular(16)),
            child: IconButton(
                icon: Image.asset(
                  'assets/images/add_to_cart.png',
                  color: product.color,
                ),
                onPressed: () {}),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  onPressed: () {},
                  color: product.color,
                  child: Text(
                    'Buy Now'.toUpperCase(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
