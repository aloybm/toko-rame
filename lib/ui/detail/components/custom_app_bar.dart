import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toko_rame/models/product_model.dart';

class CustomAppBar extends StatelessWidget {
  final bool isCollapsed;
  final Product product;
  final int currentImage;
  final PageController pageController;
  final Function(int) onPageChanged;

  const CustomAppBar({
    super.key,
    required this.isCollapsed,
    required this.product,
    required this.currentImage,
    required this.pageController,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      expandedHeight: MediaQuery.of(context).size.height * 0.5,
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        iconSize: 24,
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        style: const ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        icon: SvgPicture.asset(
          'assets/icons/icon_back.svg',
          color: isCollapsed ? Colors.black : Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: Row(
            children: [
              IconButton(
                iconSize: 24,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                style: const ButtonStyle(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                icon: SvgPicture.asset(
                  'assets/icons/icon_download.svg',
                  color: isCollapsed ? Colors.black : Colors.white,
                ),
                onPressed: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
              ),
              IconButton(
                iconSize: 24,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                style: const ButtonStyle(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                icon: SvgPicture.asset(
                  'assets/icons/icon_shopping_cart.svg',
                  color: isCollapsed ? Colors.black : Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
      flexibleSpace: Stack(children: [
        Positioned(
          child: FlexibleSpaceBar(
            background: PageView.builder(
              controller: pageController,
              itemCount: product.imageAssets.length,
              onPageChanged: onPageChanged,
              itemBuilder: (context, index) {
                return Image.asset(
                  product.imageAssets[index],
                  fit: BoxFit.cover,
                );
              },
            ),
            collapseMode: CollapseMode.pin,
          ),
        ),
        Positioned(
          bottom: 40,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              product.imageAssets.length,
              (index) => AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                width: currentImage == index ? 20.0 : 4.0,
                height: currentImage == index ? 4.0 : 4.0,
                decoration: BoxDecoration(
                    color:
                        currentImage == index ? Colors.white : Colors.white54,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -1,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.zero,
            height: 20,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
