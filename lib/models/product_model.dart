// models/product_model.dart
import 'package:flutter/material.dart';

class Product {
  final int stock, id;
  final String name, description, storeName;
  final double customerPrice, resellerPrice, commission;
  final List<String> sizes, imageAssets;
  final int commissionPercentage;
  final List<Color> colors;
  final bool isNew;

  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.customerPrice,
      required this.resellerPrice,
      required this.commission,
      required this.commissionPercentage,
      required this.sizes,
      required this.colors,
      required this.stock,
      required this.storeName,
      required this.imageAssets,
      required this.isNew});
}
