import 'package:flutter/material.dart';
import 'package:toko_rame/models/product_model.dart';

class DetailColorAndSizeWidget extends StatefulWidget {
  final Product product;

  DetailColorAndSizeWidget({required this.product});

  @override
  _DetailColorAndSizeWidgetState createState() =>
      _DetailColorAndSizeWidgetState();
}

class _DetailColorAndSizeWidgetState extends State<DetailColorAndSizeWidget> {
  String selectedPaket = "Paket 1";
  int selectedColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.transparent, 
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: const Color(0xFFE5E5E5), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Ukuran",
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: widget.product.sizes.map((size) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedPaket = size;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 13.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: selectedPaket == size
                          ? Colors.black 
                          : Colors.transparent, 
                      width: 2.0,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    size,
                    style: TextStyle(
                      color: selectedPaket == size
                          ? Colors.black
                          : Colors.grey[700], 
                      fontWeight: selectedPaket == size
                          ? FontWeight.bold 
                          : FontWeight.normal, 
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 14.0),
          const Text(
            "Warna",
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: widget.product.colors.asMap().entries.map((entry) {
              int index = entry.key;
              Color color = entry.value;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedColorIndex = index;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: selectedColorIndex == index
                          ? Colors.black 
                          : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 14.0),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Stock : ',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
              children: [
                TextSpan(
                  text:
                      '${widget.product.stock > 99 ? '99+' : widget.product.stock} pcs',
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
