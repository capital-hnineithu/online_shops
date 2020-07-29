import 'package:auth_login/screens/boy_detail_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';


class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
            icon: Icons.remove,
            onPressed: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            onPressed: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }
}
