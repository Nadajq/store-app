import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/product.dart';
class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key, required this.itemIndex, required this.product, required this.press,
  });
  final int itemIndex;// specifies the index of the product.
  final Product product;//specifies the product to be displayed.
  final VoidCallback  press;//parameter is a callback function that is invoked when the card is tapped.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(//main widget representing the product card.
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190.0,
      child: InkWell(//used to make the entire card tappable
        onTap: press,
        child: Stack(//arranges its children in layers,
          alignment: Alignment.bottomCenter,
          children: [
            Container(//represents the background of the card
              height: 166.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black26,
                  ),
                ],
              ),
            ),
            Positioned( //displays the product image positioned at the top-left corner.
              top: 0.0,
              left: 0.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 160.0,
                width: 200.0,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: SizedBox(
                height: 136.0,
                width: size.width - 200,
                child:  Column(
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Text(product.title),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Text(product.subTitle),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5,
                        vertical: kDefaultPadding / 5,
                      ),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Text('price:\$${product.price}'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
