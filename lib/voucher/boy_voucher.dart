import 'package:auth_login/model/BoyProduct.dart';
import 'package:flutter/material.dart';
class Voucher extends StatelessWidget {
   final Product product;

  const Voucher({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Container(
        padding: EdgeInsets.all(2.0),
        child: Column(
          children: [
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text('Name',  style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
                 Text('Price',  style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
                ],
              ),
                Divider(),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text(product.title, style: TextStyle(color: Colors.white,fontSize: 15.0),),
                 Text(product.price.toString(),style: TextStyle(color: Colors.white, fontSize: 15.0),),
                ],
              ),
          ],
        ),
       
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
 
