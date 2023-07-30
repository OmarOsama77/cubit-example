import 'package:fakestoreapi/data/web_service/api_service.dart';

import '../models/product.dart';

class ProductsRepositry{
  final ApiService service;

  ProductsRepositry(this.service);
  Future<List<Product>> getAllProducts()async{
    try{
      List<Product> product = await service.getAllProducts();
      return product;
    }catch(e){
      throw e;
    }
  }
}