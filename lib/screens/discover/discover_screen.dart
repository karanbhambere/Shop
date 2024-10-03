import 'package:flutter/material.dart';
import 'package:shopping_aplication/model/category_model.dart';
import 'package:shopping_aplication/screens/discover/expansion_category.dart';
import 'package:shopping_aplication/screens/search/componets/search_form.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(2),
              child: SearchForm(),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Categories',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: StaticModes.demoCategories.length,
                itemBuilder: (context, index) => ExpansionCategory(
                  svgSrc: StaticModes.demoCategories[index].svgSrc!,
                  title: StaticModes.demoCategories[index].title,
                  subCategory: StaticModes.demoCategories[index].subCategories!,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
