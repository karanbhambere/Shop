import 'package:flutter/material.dart';
import 'package:shopping_aplication/model/product_model.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final myProduct = StaticModel.demoPopularProducts;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Popular Products',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 190,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: myProduct.length,
              itemBuilder: (context, index) {
                final item = myProduct[index];
                return Card(
                  child: Column(
                    children: [
                      Image.network(
                        item.image,
                        height: 80,
                      ),
                      Text(item.title),
                      Text(item.brandName),
                      Text(
                        "\$${item.price}",
                      ),
                      if (item.priceAfetDiscount != null)
                        Text(
                          item.priceAfetDiscount.toString(),
                          style: const TextStyle(
                              decoration: TextDecoration.lineThrough),
                        ),
                      Text('${item.dicountpercent ?? 0}%OFF')
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
