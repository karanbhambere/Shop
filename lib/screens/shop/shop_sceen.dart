import 'package:flutter/material.dart';
import 'package:shopping_aplication/category.dart';
import 'package:shopping_aplication/products/popular_products.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: Image.asset('assets/images/signUp_dark.png'),
        ),
        const Category(),
        const PopularProducts()
      ],
    );
  }
}
