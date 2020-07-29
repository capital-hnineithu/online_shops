import 'package:auth_login/constants.dart';
import 'package:auth_login/model/DiscountProduct.dart';
import 'package:flutter/material.dart';


class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color'),
              Row(children: [
                ColorDot(
                  color: Colors.brown,
                  isSelected: true,
                ),
                ColorDot(
                  color: Colors.orange,
                ),
                ColorDot(
                  color: Colors.red,
                )
              ])
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(style: TextStyle(color: textColor), children: [
            TextSpan(text: 'Size\n'),
            TextSpan(
                text: '${product.size}',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold)),
          ])),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: defaultPadding / 4, right: defaultPadding / 2),
      padding: EdgeInsets.all(3.5),
      width: 24,
      height: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
          decoration: BoxDecoration(shape: BoxShape.circle, color: color)),
    );
  }
}
