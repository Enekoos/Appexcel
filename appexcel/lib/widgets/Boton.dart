import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  final String text;
  final Function press;
  final double verticalpaddin;
  final double font;

  const Boton({
    Key key,
    this.text,
    this.press,
    this.verticalpaddin = 16,
    this.font = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 16),
        padding: EdgeInsets.symmetric(vertical: verticalpaddin, horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 30,
              color: Color(0xFF666666).withOpacity(.11),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: font,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
