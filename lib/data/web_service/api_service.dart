import 'dart:convert';

import 'package:fakestoreapi/data/models/product.dart';
import 'package:fakestoreapi/data/web_service/api_constants.dart';
import 'package:http/http.dart'as http;
class ApiService{
  Future<List<Product>> getAllProducts()async{
      try{
        final url = Uri.parse(ApiConstatns.BaseUrl);
        var response = await http.get(url);
        var body = jsonDecode(response.body) as List<dynamic>;
        List<Product> products = body.map((e) =>Product.fromJson(e)).toList();
        print('Length in service ${products.length}');
      return products;
      }catch(e){
        throw e;
      }
  }
}