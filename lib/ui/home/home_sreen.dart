import 'package:flutter/material.dart';
import 'package:toko_rame/models/dummy_data.dart';
import 'package:toko_rame/ui/detail/product_detail_screen.dart';
import 'package:toko_rame/ui/home/components/content_text.dart';
import 'package:toko_rame/ui/home/components/image_carousel.dart';
import 'package:toko_rame/ui/home/components/next_button.dart';
import 'package:toko_rame/ui/home/components/skip_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentImage = 0;
  final PageController _pageController = PageController();

  final List<String> images = [
    'assets/images/img_home_1.jpg',
    'assets/images/img_home_2.jpg',
    'assets/images/img_home_3.jpg',
  ];
  final List<String> title = [
    'Gratis Materi Belajar Menjadi Seller Handal',
    'Ribuan Produk dengan Kualitas Terbaik',
    'Toko Online Unik Untuk Kamu Jualan',
  ];
  final List<String> subtitle = [
    'Nggak bisa jualan?\nJangan khawatir, Tokorame akan membimbing kamu hingga menjadi seller langsung dari ahlinya',
    'Tokorame menyediakan ribuan produk dengan kualitas terbaik dari seller terpercaya',
    'Tokorame menyediakan ribuan produk dengan kualitas terbaik dari seller terpercaya',
  ];

  void _nextPage(BuildContext context) {
    if (_currentImage < images.length - 1) {
      _pageController.animateToPage(
        _currentImage + 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductDetailScreen(product: dummyProducts[0]),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                shadowColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                expandedHeight: MediaQuery.of(context).size.height * 0.65,
                elevation: 0,
                backgroundColor: Colors.white,
                actions: [
                  SkipButton(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailScreen(product: dummyProducts[0]),
                      ),
                    ),
                  ),
                ],
                flexibleSpace: ImageCarousel(
                  images: images,
                  currentImage: _currentImage,
                  pageController: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentImage = index;
                    });
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: ContentText(
                  title: title[_currentImage],
                  subtitle: subtitle[_currentImage],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 19,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: NextButton(
                onPressed: () => _nextPage(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
