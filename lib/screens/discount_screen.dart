import 'package:auth_login/discount_components/item_cart.dart';
import 'package:auth_login/model/DiscountProduct.dart';
import 'package:auth_login/screens/discount_detail_screen.dart';
import 'package:flutter/material.dart';

class DiscountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Discount Clothes"),
        elevation: 0.0,
      ),
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              product: products[index],
                            ),
                          )),
                    )),
          ),
        )
      ],
    ),
    );
  }
}
