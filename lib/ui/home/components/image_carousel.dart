import 'package:flutter/material.dart';
import 'package:toko_rame/ui/home/components/image_carousal_indicator.dart';

class ImageCarousel extends StatelessWidget {
  final List<String> images;
  final int currentImage;
  final PageController pageController;
  final Function(int) onPageChanged;

  const ImageCarousel({super.key, 
    required this.images,
    required this.currentImage,
    required this.pageController,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: pageController,
          itemCount: images.length,
          onPageChanged: onPageChanged,
          itemBuilder: (context, index) {
            return Image.asset(
              images[index],
              fit: BoxFit.cover,
            );
          },
        ),
        Positioned(
          bottom: 40,
          left: 0,
          right: 0,
          child: Indicator(
            currentImage: currentImage,
            length: images.length,
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
      ],
    );
  }
}
