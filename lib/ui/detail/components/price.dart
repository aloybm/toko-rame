import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:toko_rame/components/bottom_sheet.dart';
import 'package:toko_rame/models/product_model.dart';

class DetailPriceWidget extends StatelessWidget {
  final Product product;

  const DetailPriceWidget({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    final NumberFormat currencyFormat = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp',
      decimalDigits: 0,
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              decoration: const BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'NEW ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'Product Baru',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              iconSize: 24,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              style: const ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              icon: SvgPicture.asset(
                'assets/icons/icon_share.svg',
              ),
              onPressed: () {
                showCustomBottomSheet(
                  context,
                  title: product.name,
                  description: product.description,
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 14.0),
        Text(
          product.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        Text(
          product.storeName,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 14.0,
          ),
        ),
        const SizedBox(height: 14.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      currencyFormat.format(product.customerPrice),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'Harga Customer',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  height: 40,
                  width: 1,
                  color: Colors.grey,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      currencyFormat.format(product.resellerPrice),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const Text(
                      'Harga Reseller',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 14.0),
        Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
            ),
          ),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Komisi ',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
              children: [
                TextSpan(
                  text: currencyFormat.format(product.commission),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' (${product.commissionPercentage})%',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
