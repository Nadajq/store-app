import 'package:flutter/material.dart';

import '../../constants.dart';
class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key, required this.fillColor, this.isSelected= false,
  });
  final Color fillColor;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(//main widget that represents the colored dot
      margin:
      EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3.0),//adds padding around the dot
      height: 24,
      width: 24,
      decoration: BoxDecoration( //specifies the appearance of the dot
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? kTextLightColor : Colors.transparent),
      ),
      child: Container( //another Container with a circular shape and a background color
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),

    );
  }
}
