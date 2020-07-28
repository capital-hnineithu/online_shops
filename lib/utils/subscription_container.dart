import 'package:auth_login/utils/text_styles.dart';
import 'package:flutter/material.dart';

class SubscriptionContainer extends StatelessWidget {
  final String text, imgPath;

  const SubscriptionContainer({Key key, this.text, this.imgPath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.srcATop),
              child: Image.asset(
                imgPath,
                width: width - 32,
                height: height * 0.6 / 4,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 48,
            right: 48,
            child: Center(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    text,
                    style: TextStyles.subscriptionTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
