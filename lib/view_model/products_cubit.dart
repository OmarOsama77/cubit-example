import 'package:bloc/bloc.dart';
import 'package:fakestoreapi/data/models/product.dart';
import 'package:meta/meta.dart';

import '../data/repositry/products_repositry.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {

ProductsCubit(this.productsRepositry) : super(ProductsInitial());
final ProductsRepositry productsRepositry;
List<Product> products=[];
    List<Product> getAllProducts(){
     try{
       productsRepositry.getAllProducts().then((value){
         products = value;
         print('value length ${value.length}');
         print('product lenght injjj ${products.length}');
        emit(ProductsLoaded(products));

       });

      return products;
     }catch(e){
       print("Error in cubit");
       throw e;
     }
    }


}
