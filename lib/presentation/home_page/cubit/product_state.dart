part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductLoading extends ProductState {}

final class ProductSuccess extends ProductState {
  final List<ProductModel> productsList;

  ProductSuccess({required this.productsList});
}

final class ProductFailed extends ProductState {
  final String message;

  ProductFailed({required this.message});
}
