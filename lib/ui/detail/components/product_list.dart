import 'package:flutter/material.dart';
import 'package:toko_rame/models/product_model.dart';
import 'package:toko_rame/ui/detail/components/product_card.dart';

class ProductList extends StatelessWidget {
  final List<Product> products;

  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 254,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 18 : 0, 
              right: index == products.length - 1 ? 18 : 20, 
            ),
            child: ProductCard(product: products[index]),
          );
        },
      ),
    );
  }
}
