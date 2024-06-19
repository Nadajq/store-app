import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/details/product_image.dart';

import 'color_dot.dart';

class DetailsBody extends StatelessWidget {//widget appears to represent the body of a screen that displays details about a product
  final Product product;

  //property is used to pass the product data to the DetailsBody widget.

  const DetailsBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(//to arrange multiple children in a vertical layout
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(//container serves as the top portion of the details section. It has a white background with rounded borders at the bottom,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(  // centers the product image
                child: ProductImage(
                  size: size,
                  image: product.image,
                ),
              ),
              Padding(  //creates a row of color dots below the product image
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      fillColor: kTextLightColor,
                      isSelected: true,
                    ),
                    ColorDot(
                      fillColor: Colors.blue,
                      isSelected: false,
                    ),
                    ColorDot(
                      fillColor: Colors.red,
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              Padding(    //displays the product title and price.
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                'price:\$${product.price}',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              )
            ],
          ),
        ),
        Container( // represents the bottom portion of the details section and contains the product description.
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
            vertical: kDefaultPadding / 2,
          ),
          child: Text(
            product.description,
            style: TextStyle(color: Colors.white, fontSize: 19.0),
          ),
        )
      ],
    );
  }
}
