
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  final VoidCallback onTap;

  const SkipButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          "Lewati",
          style: TextStyle(color: Colors.grey[800], fontSize: 16),
        ),
      ),
    );
  }
}