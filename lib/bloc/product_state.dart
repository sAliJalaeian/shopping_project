part of 'product_bloc.dart';

sealed class ProductState extends Equatable {
  const ProductState();
  
  @override
  List<Object> get props => [];
}

final class ProductInitial extends ProductState {}

final class ProductFetchSuccessState extends ProductState {
  final List<Product> products;

  const ProductFetchSuccessState({required this.products});
  
  @override
  List<Object> get props => [products];
}

final class ProductFetchFailedState extends ProductState {}

final class ProductFetchLoadingState extends ProductState {}