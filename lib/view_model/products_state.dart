part of 'products_cubit.dart';

@immutable
abstract class ProductsState {}

class ProductsInitial extends ProductsState {}

class ProductsLoaded extends ProductsState{
  List<Product> products;

  ProductsLoaded(this.products);
}
