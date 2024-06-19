import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {  //represent a screen that displays details about a product.
  final Product product; //used to pass the product data to the DetailsScreen widget.

 // DetailsScreen(this.product);

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(  //Sets the body  to a DetailsBody widget,
        product:product,
      ) ,
    );
  }

  AppBar detailsAppBar(BuildContext context) {   // method defines the app bar
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton( // It uses an IconButton with an arrow back icon to navigate back to the previous screen when press
      padding: EdgeInsets.only(right: kDefaultPadding),
        icon:Icon(Icons.arrow_back,
        color: kprimaryColor,
      ),
      onPressed: () {
          Navigator.pop(context);
      }
    ),
      centerTitle: false,
      title: Text('back',style: Theme.of(context).textTheme.bodyText2,),
  );
  }
}
