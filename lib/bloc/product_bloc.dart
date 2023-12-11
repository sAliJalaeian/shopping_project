import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shopping_project/models/shop_model.dart';
import 'package:shopping_project/services/product_service.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductService productService;

  ProductBloc({required this.productService}) : super(ProductInitial()) {
    on <FetchProductEvent>((event, emit) async {
      final productList = await productService.fetchPosts();
      if (productList.isEmpty) {
        emit(ProductFetchFailedState());
      } else if (productList.isNotEmpty) {
        emit(ProductFetchSuccessState(products: productList));
      } else {
        emit(ProductFetchLoadingState());
      }
    });
  }
}
