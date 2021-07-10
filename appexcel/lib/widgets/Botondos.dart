import 'package:appexcel/Color.dart';
import 'package:flutter/material.dart';

class Botondos extends StatelessWidget {
  final String text;
  final double radio;
  final Function press;

  const Botondos({
    Key key,
    this.text,
    this.radio = 29,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: KBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radio),
            bottomRight: Radius.circular(radio),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
