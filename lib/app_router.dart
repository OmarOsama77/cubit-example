import 'package:fakestoreapi/data/repositry/products_repositry.dart';
import 'package:fakestoreapi/utils/routes/routes_names.dart';
import 'package:fakestoreapi/view_model/products_cubit.dart';
import 'package:fakestoreapi/views/screens/details_screen.dart';
import 'package:fakestoreapi/views/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/web_service/api_service.dart';

class AppRouter{
  late ProductsRepositry productsRepositry;
  late ApiService service;
  AppRouter(){
    service = ApiService();
    productsRepositry = ProductsRepositry(service);
  }
  Route? generteRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.home:
        return MaterialPageRoute(builder:(_)=>  BlocProvider(create: (_)=>ProductsCubit(productsRepositry),child: Home()));
      // case RoutesNames.details :
      //   return MaterialPageRoute(builder:(_)=>DetailsScreen());
    }
  }
}