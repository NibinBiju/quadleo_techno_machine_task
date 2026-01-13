import 'package:dartz/dartz.dart';
import 'package:quadleo_techno_machine_task/core/helper/dio_helper.dart';
import 'package:quadleo_techno_machine_task/data/model/product.dart';

abstract class ProductSource {
  Future<Either<String, List<ProductModel>>> getProducts();
}

class ProductSourceImpl extends ProductSource {
  final DioHelper dioHelper;

  ProductSourceImpl(this.dioHelper);

  @override
  Future<Either<String, List<ProductModel>>> getProducts() async {
    try {
      final response = await dioHelper.get('https://fakestoreapi.com/products');

      final List<ProductModel> products = (response.data as List)
          .map((e) => ProductModel.fromJson(e))
          .toList();

      return Right(products);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
