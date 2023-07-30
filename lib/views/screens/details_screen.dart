import 'package:flutter/material.dart';
import 'package:fakestoreapi/data/models/product.dart';
class DetailsScreen extends StatelessWidget {
final Product product;

DetailsScreen(this.product);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("Details"),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
          child: Container(width: double.infinity,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(child: Text(product.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                SizedBox(height: 25,),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: screenWidth/2,
                    height: screenHeight/4,
                    decoration: BoxDecoration(
                      image: DecorationImage(image:NetworkImage(product.image)),
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Text("Price : ${product.price}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 25,),
                Text("Category : ${product.category}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 50,),
                Text("Description : ${product.description}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
