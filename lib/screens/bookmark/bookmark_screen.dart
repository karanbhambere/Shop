import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_aplication/components/products/product_card.dart';
import 'package:shopping_aplication/constant.dart';
import 'package:shopping_aplication/model/product_model.dart';
import 'package:shopping_aplication/route/route_constant.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myProduct = StaticModel.demoPopularProducts;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: defaultPadding,
          crossAxisSpacing: defaultPadding,
          childAspectRatio: 0.66),
      itemBuilder: (context, index) {
        final item = myProduct[index];
        return ProductCard(
          image: item.image,
          brandName: item.brandName,
          title: item.title,
          price: item.price,
          dicountpercent: item.dicountpercent,
          priceAfetDiscount: item.priceAfetDiscount,
          press: () {
            Navigator.pushNamed(context, productDetailsScreenRoute);
          },
        );
      },
      itemCount: myProduct.length,
    );
  }
}
