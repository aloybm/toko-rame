import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int currentImage;
  final int length;

  const Indicator({super.key, required this.currentImage, required this.length});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        length,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          width: currentImage == index ? 20.0 : 4.0,
          height: 4.0,
          decoration: BoxDecoration(
              color: currentImage == index ? Colors.white : Colors.white54,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
