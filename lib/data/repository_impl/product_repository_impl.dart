import 'package:dartz/dartz.dart';
import 'package:quadleo_techno_machine_task/data/model/product.dart';
import 'package:quadleo_techno_machine_task/data/source/product_source.dart';
import 'package:quadleo_techno_machine_task/domain/repository/products_repository.dart';

class ProductRepositoryImpl extends ProductsRepository {
  final ProductSource productSource;

  ProductRepositoryImpl(this.productSource);
  @override
  Future<Either<String, List<ProductModel>>> getProducts() {
    return productSource.getProducts();
  }
}
