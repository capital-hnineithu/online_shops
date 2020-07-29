import 'package:auth_login/boy_components/add_to_cart.dart';
import 'package:auth_login/boy_components/cart_counter.dart';
import 'package:auth_login/boy_components/color_and_size.dart';
import 'package:auth_login/boy_components/description.dart';
import 'package:auth_login/boy_components/product_title_with_image.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/BoyProduct.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset(
          'assets/images/back.png',
          width: 25,
          height: 25,
        ),
        onPressed: () { Navigator.of(context).pop();},
      ),
    );
  }
}

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  height: 500,
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: defaultPadding,
                      right: defaultPadding),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: ColorAndSize(product: product),
                      ),
                      SizedBox(
                        height: defaultPadding / 2,
                      ),
                      Description(product: product),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CartCounter(),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultPadding),
                              child: Container(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                  'assets/images/heart.png',
                                ),
                              ),
                            )
                          ]),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

SizedBox buildOutlineButton({IconData icon, Function onPressed}) {
  return SizedBox(
    width: 40,
    height: 32,
    child: OutlineButton(
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
      ),
      onPressed: onPressed,
      child: Icon(icon),
    ),
  );
}
