import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/screens/details_screen.dart';

import 'home/product_cart.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea( //ensure that child widgets are positioned within the "safe area" of a device's screen.
      child: Column(//to arrange multiple children in a vertical layout
        children: [
          const SizedBox(height: kDefaultPadding / 2), //adds a SizedBox with a fixed height ,used for adding spacing between elements
          Expanded(// to expand the child widget of Column
            child: Stack(// make a layer of widgets by putting them on top of each other
              children: [
                Container(//is like a box to store contents,can hold several child widgets
                  margin: EdgeInsets.only(top: 70.0),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(  //applies rounded borders to the top corners
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(//creates a scrollable list view,
                  itemCount: 4,
                  itemBuilder: (context, index) => ProductCard( // generate a list of ProductCard widgets based on the products list.
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(     //when pressed, it navigates to a DetailsScreen with details about the selected product.
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(product: products[index],),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
