import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomBar extends StatelessWidget {
  final VoidCallback onAddToStore;
  final VoidCallback onAddToCart;

  const CustomBottomBar({super.key, 
    required this.onAddToStore,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: EdgeInsets.zero,
      elevation: 0,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: onAddToStore,
                style: OutlinedButton.styleFrom(
                  fixedSize: Size.fromHeight(40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  side: BorderSide(color: Colors.black),
                ),
                child: const Text(
                  'Tambahkan ke toko',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            ElevatedButton(
              onPressed: onAddToCart,
              style: ElevatedButton.styleFrom(
                fixedSize: Size(90, 40),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: SvgPicture.asset(
                'assets/icons/icon_shopping_cart.svg',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
