import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text;
  Color textColor;
  double fontSize;
  FontWeight fontWeight;
  double paddingLeft;
  TextWidget({
    Key? key,
    required this.text,
    this.textColor = Colors.black,
    this.fontSize = 12,
    this.fontWeight = FontWeight.normal,
    this.paddingLeft = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingLeft),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
