import 'package:flutter/material.dart';
import 'package:quadleo_techno_machine_task/core/widgets/custom_text.dart';
import 'package:quadleo_techno_machine_task/core/widgets/product_card.dart';
import 'package:quadleo_techno_machine_task/data/model/product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: CustomTextWidget(text: 'Products'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// Search + Filter
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Icon(Icons.tune),
                ),
              ],
            ),

            const SizedBox(height: 16),

            /// Product Grid
            Expanded(
              child: GridView.builder(
                itemCount: productList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.68,
                ),
                itemBuilder: (context, index) {
                  final product = productList[index];
                  return ProductCard(product: product);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Dummy Data
final List<Product> productList = [
  Product(
    name: "Men's Cotton Jacket",
    image: "https://images.unsplash.com/photo-1618354691438-25bc04584c23",
    price: "5,800",
  ),

  Product(
    name: "Fjällräven - Foldsack No 1 Backpack",
    image: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f",
    price: "3,200",
  ),
  Product(
    name: "Casual Premium Slim Fit T-Shirt",
    image: "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab",
    price: "1,600",
  ),
];
