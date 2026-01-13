import 'package:dartz/dartz.dart';
import 'package:quadleo_techno_machine_task/data/model/product.dart';

abstract class ProductsRepository {
  Future<Either<String, List<ProductModel>>> getProducts();
}
