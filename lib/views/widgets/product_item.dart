import 'package:fakestoreapi/app_router.dart';
import 'package:fakestoreapi/views/screens/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/models/product.dart';
import '../../utils/routes/routes_names.dart';

class ProductItem extends StatelessWidget {
  final Product product;


  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.of(context).push(MaterialPageRoute(builder:(context)=>DetailsScreen(product)));
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: GridTile(
          child: Container(
            color: Colors.grey,
            child: product.image == null
                ? CircularProgressIndicator()
                : Image.network(product.image),
          ),
          footer: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: Colors.black,
            alignment: Alignment.bottomCenter,
            child: Text(
              product.title,
              style: TextStyle(
                  height: 1.3,
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
