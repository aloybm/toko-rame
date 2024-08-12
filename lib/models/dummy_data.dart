import 'dart:ui';

import 'package:toko_rame/models/product_model.dart';

final List<Product> dummyProducts = [
  Product(
      id: 1,
      name: 'Beauty Set by Irvie',
      description: '*New Material*\n'
          'Terbuat dari bahan 100% Katun Linen yang membuat nyaman jika digunakan.\n'
          'Menggunakan fit Relaxed Fit untuk kenyamanan maksimal.\n'
          '-\n'
          'SIZE CHART RELAXED SHIRT\n'
          '- S: Lingkar Dada 92cm, Panjang 70cm\n'
          '- M: Lingkar Dada 96cm, Panjang 72cm\n'
          '- L: Lingkar Dada 100cm, Panjang 74cm\n'
          '- XL: Lingkar Dada 104cm, Panjang 76cm\n'
          'Mudah dirawat dan tahan lama, pakaian ini ideal untuk penggunaan sehari-hari.',
      customerPrice: 178000,
      resellerPrice: 142400,
      commission: 35600,
      commissionPercentage: 20,
      sizes: ['Paket 1', 'Paket 2'],
      colors: [
        const Color.fromARGB(255, 245, 186, 132),
        const Color.fromARGB(253, 63, 33, 19)
      ],
      stock: 203,
      storeName: 'Irvie Group Official',
      imageAssets: [
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg'
      ],
      isNew: true),
  Product(
      id: 2,
      name: 'Beauty Set by Irvie',
      description: '*New Material*\n'
          'Terbuat dari bahan 100% Katun Linen yang membuat nyaman jika digunakan.\n'
          'Menggunakan fit Relaxed Fit untuk kenyamanan maksimal.\n'
          '-\n'
          'SIZE CHART RELAXED SHIRT\n'
          '- S: Lingkar Dada 92cm, Panjang 70cm\n'
          '- M: Lingkar Dada 96cm, Panjang 72cm\n'
          '- L: Lingkar Dada 100cm, Panjang 74cm\n'
          '- XL: Lingkar Dada 104cm, Panjang 76cm\n'
          'Mudah dirawat dan tahan lama, pakaian ini ideal untuk penggunaan sehari-hari.',
      customerPrice: 160200,
      resellerPrice: 142400,
      commission: 17800,
      commissionPercentage: 10,
      sizes: ['Paket 1', 'Paket 2'],
      colors: [
        Color.fromARGB(255, 24, 112, 147),
        Color.fromARGB(255, 111, 240, 12)
      ],
      stock: 11,
      storeName: 'Irvie Group Official',
      imageAssets: [
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg'
      ],
      isNew: false),
  Product(
      id: 3,
      name: 'Beauty Set by Irvie',
      description: '*New Material*\n'
          'Terbuat dari bahan 100% Katun Linen yang membuat nyaman jika digunakan.\n'
          'Menggunakan fit Relaxed Fit untuk kenyamanan maksimal.\n'
          '-\n'
          'SIZE CHART RELAXED SHIRT\n'
          '- S: Lingkar Dada 92cm, Panjang 70cm\n'
          '- M: Lingkar Dada 96cm, Panjang 72cm\n'
          '- L: Lingkar Dada 100cm, Panjang 74cm\n'
          '- XL: Lingkar Dada 104cm, Panjang 76cm\n'
          'Mudah dirawat dan tahan lama, pakaian ini ideal untuk penggunaan sehari-hari.',
      customerPrice: 178000,
      resellerPrice: 142400,
      commission: 35600,
      commissionPercentage: 20,
      sizes: ['Paket 1', 'Paket 2'],
      colors: [
        const Color.fromARGB(255, 135, 206, 235),
        const Color.fromARGB(255, 25, 25, 112)
      ],
      stock: 123,
      storeName: 'Irvie Group Official',
      imageAssets: [
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg'
      ],
      isNew: false),
  Product(
      id: 4,
      name: 'Beauty Set by Irvie',
      description: '*New Material*\n'
          'Terbuat dari bahan 100% Katun Linen yang membuat nyaman jika digunakan.\n'
          'Menggunakan fit Relaxed Fit untuk kenyamanan maksimal.\n'
          '-\n'
          'SIZE CHART RELAXED SHIRT\n'
          '- S: Lingkar Dada 92cm, Panjang 70cm\n'
          '- M: Lingkar Dada 96cm, Panjang 72cm\n'
          '- L: Lingkar Dada 100cm, Panjang 74cm\n'
          '- XL: Lingkar Dada 104cm, Panjang 76cm\n'
          'Mudah dirawat dan tahan lama, pakaian ini ideal untuk penggunaan sehari-hari.',
      customerPrice: 178000,
      resellerPrice: 10600,
      commission: 71200,
      commissionPercentage: 40,
      sizes: ['Paket 1', 'Paket 2'],
      colors: [
        const Color.fromARGB(255, 255, 165, 0),
        const Color.fromARGB(255, 255, 69, 0),
        const Color.fromARGB(255, 139, 0, 0)
      ],
      stock: 56,
      storeName: 'Irvie Group Official',
      imageAssets: [
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg'
      ],
      isNew: false),
  Product(
      id: 5,
      name: 'Beauty Set by Zara',
      description: '*New Material*\n'
          'Terbuat dari bahan 100% Katun Linen yang membuat nyaman jika digunakan.\n'
          'Menggunakan fit Relaxed Fit untuk kenyamanan maksimal.\n'
          '-\n'
          'SIZE CHART RELAXED SHIRT\n'
          '- S: Lingkar Dada 92cm, Panjang 70cm\n'
          '- M: Lingkar Dada 96cm, Panjang 72cm\n'
          '- L: Lingkar Dada 100cm, Panjang 74cm\n'
          '- XL: Lingkar Dada 104cm, Panjang 76cm\n'
          'Mudah dirawat dan tahan lama, pakaian ini ideal untuk penggunaan sehari-hari.',
      customerPrice: 178000,
      resellerPrice: 142400,
      commission: 35600,
      commissionPercentage: 20,
      sizes: ['Paket 1', 'Paket 2'],
      colors: [
        const Color.fromARGB(255, 255, 165, 0),
        const Color.fromARGB(255, 255, 69, 0),
        const Color.fromARGB(255, 139, 0, 0)
      ],
      stock: 56,
      storeName: 'Zara Group Official',
      imageAssets: [
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg'
      ],
      isNew: true),
  Product(
      id: 6,
      name: 'Beauty Set by Zara',
      description: '*New Material*\n'
          'Terbuat dari bahan 100% Katun Linen yang membuat nyaman jika digunakan.\n'
          'Menggunakan fit Relaxed Fit untuk kenyamanan maksimal.\n'
          '-\n'
          'SIZE CHART RELAXED SHIRT\n'
          '- S: Lingkar Dada 92cm, Panjang 70cm\n'
          '- M: Lingkar Dada 96cm, Panjang 72cm\n'
          '- L: Lingkar Dada 100cm, Panjang 74cm\n'
          '- XL: Lingkar Dada 104cm, Panjang 76cm\n'
          'Mudah dirawat dan tahan lama, pakaian ini ideal untuk penggunaan sehari-hari.',
      customerPrice: 178000,
      resellerPrice: 142400,
      commission: 35600,
      commissionPercentage: 20,
      sizes: ['Paket 1', 'Paket 2'],
      colors: [
        const Color.fromARGB(255, 255, 165, 0),
        const Color.fromARGB(255, 255, 69, 0),
        const Color.fromARGB(255, 139, 0, 0)
      ],
      stock: 56,
      storeName: 'Zara Group Official',
      imageAssets: [
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg'
      ],
      isNew: true),
  Product(
      id: 7,
      name: 'Beauty Set by Zara',
      description: '*New Material*\n'
          'Terbuat dari bahan 100% Katun Linen yang membuat nyaman jika digunakan.\n'
          'Menggunakan fit Relaxed Fit untuk kenyamanan maksimal.\n'
          '-\n'
          'SIZE CHART RELAXED SHIRT\n'
          '- S: Lingkar Dada 92cm, Panjang 70cm\n'
          '- M: Lingkar Dada 96cm, Panjang 72cm\n'
          '- L: Lingkar Dada 100cm, Panjang 74cm\n'
          '- XL: Lingkar Dada 104cm, Panjang 76cm\n'
          'Mudah dirawat dan tahan lama, pakaian ini ideal untuk penggunaan sehari-hari.',
      customerPrice: 178000,
      resellerPrice: 142400,
      commission: 35600,
      commissionPercentage: 20,
      sizes: ['Paket 1', 'Paket 2'],
      colors: [
        const Color.fromARGB(255, 255, 165, 0),
        const Color.fromARGB(255, 255, 69, 0),
        const Color.fromARGB(255, 139, 0, 0)
      ],
      stock: 56,
      storeName: 'Zara Group Official',
      imageAssets: [
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg'
      ],
      isNew: true),
  Product(
      id: 5,
      name: 'Beauty Set by Zara',
      description: '*New Material*\n'
          'Terbuat dari bahan 100% Katun Linen yang membuat nyaman jika digunakan.\n'
          'Menggunakan fit Relaxed Fit untuk kenyamanan maksimal.\n'
          '-\n'
          'SIZE CHART RELAXED SHIRT\n'
          '- S: Lingkar Dada 92cm, Panjang 70cm\n'
          '- M: Lingkar Dada 96cm, Panjang 72cm\n'
          '- L: Lingkar Dada 100cm, Panjang 74cm\n'
          '- XL: Lingkar Dada 104cm, Panjang 76cm\n'
          'Mudah dirawat dan tahan lama, pakaian ini ideal untuk penggunaan sehari-hari.',
      customerPrice: 178000,
      resellerPrice: 142400,
      commission: 35600,
      commissionPercentage: 20,
      sizes: ['Paket 1', 'Paket 2'],
      colors: [
        const Color.fromARGB(255, 255, 165, 0),
        const Color.fromARGB(255, 255, 69, 0),
        const Color.fromARGB(255, 139, 0, 0)
      ],
      stock: 56,
      storeName: 'Zara Group Official',
      imageAssets: [
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg',
        'assets/images/img_product.jpg'
      ],
      isNew: false),
];
