import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toko_rame/models/product_model.dart';

class DetailDescriptionWidget extends StatefulWidget {
  final Product product;

  const DetailDescriptionWidget({super.key, required this.product});

  @override
  _DetailDescriptionWidgetState createState() =>
      _DetailDescriptionWidgetState();
}

class _DetailDescriptionWidgetState extends State<DetailDescriptionWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xFFE5E5E5), width: 1),
          bottom: BorderSide(color: Color(0xFFE5E5E5), width: 1),
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Deskripsi',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
              
                  fontSize: 16.0,
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                style: const ButtonStyle(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                icon: SvgPicture.asset(
                  'assets/icons/icon_copy.svg',
                ),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: widget.product.description));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Deskripsi disalin ke clipboard')),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            widget.product.description,
            maxLines: _isExpanded ? null : 7,
            overflow:
                _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400
            ),
          ),
          const SizedBox(height: 8.0),
          GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _isExpanded ? 'Tutup' : 'Selengkapnya',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Icon(
                  _isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
