import 'package:flutter/material.dart';

import '../../constants.dart';
class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.size, required this.image,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(// is like a box to store contents,can hold several child widgets
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width*0.8,

      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(//container is used to create a circular frame for the image.
            height: size.width*0.7,
            width: size.width*0.7,
            decoration: BoxDecoration(
              color: Colors.white,
             // shape: BoxShape.circle,
            ),
          ),
          Image.asset(//used to display the product image
            image,
            height: size.height*0.75,
            width: size.width*0.75,
            fit: BoxFit.cover,//ensures that the image covers the entire circular frame.
          ),
        ],
      ),
    );
  }
}
