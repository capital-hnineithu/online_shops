import 'package:auth_login/constants.dart';
import 'package:flutter/material.dart';

import '../model/BoyProduct.dart';

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
        Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Size'),
           buildDropDown(),
            ],
        )),
      ],
    );
  }
}

class buildDropDown extends StatefulWidget {
  @override
  _buildDropDownState createState() => _buildDropDownState();
}

class _buildDropDownState extends State<buildDropDown> {
  final List<String> items = <String>['Small', 'M', 'L'];
  String selectedItem = 'Small';
  @override
  Widget build(BuildContext context) {
    return Container(
       margin:
          EdgeInsets.only(top: defaultPadding / 4, right: defaultPadding / 2),
      padding: EdgeInsets.all(3.5),
      height: 30.0,
      width: 80.0,
       decoration: BoxDecoration(
              border: Border.all(width: 1.0),
              borderRadius: BorderRadius.all(
        Radius.circular(5.0) //         <--- border radius here
    ),
    ),
      child: 
          DropdownButton<String>(
            value: selectedItem,
             underline: SizedBox(),
            onChanged: (String string) => setState(() => selectedItem = string),
            selectedItemBuilder: (BuildContext context) {
              return items.map<Widget>((String item) {
                return Text(item);
              }).toList();
            },
            items: items.map((String item) {
              return DropdownMenuItem<String>(
                child: Text(item, style:  TextStyle(color: Colors.black),),
                value: item,
              );
            }).toList(),
            
          ),
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
