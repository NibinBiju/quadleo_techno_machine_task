import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quadleo_techno_machine_task/data/model/product.dart';
import 'package:quadleo_techno_machine_task/domain/repository/products_repository.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductsRepository productsRepository;
  ProductCubit(this.productsRepository) : super(ProductInitial());

  getProducts() async {
    var returnedData = await productsRepository.getProducts();

    returnedData.fold(
      (error) {
        emit(ProductFailed(message: error.toString()));
      },
      (data) {
        emit(ProductSuccess(productsList: data));
      },
    );
  }
}
