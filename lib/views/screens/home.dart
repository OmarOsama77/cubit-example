import 'package:fakestoreapi/data/web_service/api_service.dart';
import 'package:fakestoreapi/view_model/products_cubit.dart';
import 'package:fakestoreapi/views/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fakestoreapi/data/models/product.dart';


class Home extends StatelessWidget {
late List<Product> product;



  Widget buildBloc(){
    return BlocBuilder<ProductsCubit,ProductsState>(builder:(_,state){
        if(state is ProductsLoaded){

            product = state.products;

        return items(state.products);
        }else{
          return Container(
            height: double.infinity,
            width: double.infinity,
            child: Center(child: CircularProgressIndicator()),
          );
        }
    });
  }
  Widget items(List<Product> p){
   return Container(width: double.infinity,
        child:GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 2,
        ),itemCount: p.length,
            itemBuilder: (ctx,index){
              return ProductItem(p[index]);
            })
    );
  }

  @override
  Widget build(BuildContext context) {
    var viewModel =  BlocProvider.of<ProductsCubit>(context);
    viewModel.getAllProducts();
    return Scaffold(
      appBar: AppBar(title: Text("Products"),),
      body: buildBloc()

    );
  }
}
