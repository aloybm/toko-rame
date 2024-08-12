import 'package:flutter/material.dart';
import 'package:toko_rame/models/product_model.dart';
import 'package:toko_rame/ui/detail/components/description.dart';
import 'package:toko_rame/ui/detail/components/color_and_size.dart';
import 'package:toko_rame/ui/detail/components/price.dart';
import 'package:toko_rame/ui/detail/components/product_list.dart';
import 'package:toko_rame/ui/detail/components/custom_app_bar.dart';
import 'package:toko_rame/ui/detail/components/custom_bottom_bar.dart';
import 'package:toko_rame/models/dummy_data.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  late ScrollController _scrollController;
  late PageController _pageController;
  int _currentImage = 0;
  bool _isCollapsed = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _pageController = PageController();
    _scrollController.addListener(() {
      if (_scrollController.offset > 300 && !_isCollapsed) {
        setState(() {
          _isCollapsed = true;
        });
      } else if (_scrollController.offset <= 300 && _isCollapsed) {
        setState(() {
          _isCollapsed = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(controller: _scrollController, slivers: [
        CustomAppBar(
          isCollapsed: _isCollapsed,
          product: widget.product,
          currentImage: _currentImage,
          pageController: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentImage = index;
            });
          },
        ),
        SliverToBoxAdapter(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: DetailPriceWidget(
                product: widget.product,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
              child: DetailColorAndSizeWidget(
                product: widget.product,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DetailDescriptionWidget(
                product: widget.product,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 18, bottom: 16),
                    child: Text(
                      "Produk lain dari ${widget.product.storeName}",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                       
                      ),
                    ),
                  ),
                  ProductList(
                    products: dummyProducts.where((product) {
                      return product.storeName == widget.product.storeName &&
                          product.id != widget.product.id;
                    }).toList(),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 18, bottom: 16),
                    child: Text(
                      "Produk Serupa",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        
                      ),
                    ),
                  ),
                  ProductList(
                    products: (dummyProducts.where((product) {
                      return product.id != widget.product.id;
                    }).toList()
                      ..shuffle()),
                  ),
                ],
              ),
            )
          ],
        ))
      ]),
      bottomNavigationBar: CustomBottomBar(
        onAddToStore: () {},
        onAddToCart: () {},
      ),
    );
  }
}
