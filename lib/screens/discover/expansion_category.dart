import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_aplication/route/route_constant.dart';

class ExpansionCategory extends StatelessWidget {
  const ExpansionCategory({
    super.key,
    required this.title,
    required this.subCategory,
    required this.svgSrc,
  });
  final String title, svgSrc;
  final List subCategory;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      iconColor: Colors.black,
      collapsedIconColor: Colors.black,
      leading: SvgPicture.asset(
        svgSrc,
        height: 24,
        width: 24,
        colorFilter: ColorFilter.mode(
            Theme.of(context).iconTheme.color!, BlendMode.srcIn),
      ),
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: const TextStyle(fontSize: 14),
        ),
      ),
      children: List.generate(
          subCategory.length,
          (index) => Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.popAndPushNamed(context, onSaleScreenRoute);
                    },
                    title: Text(
                      subCategory[index].title,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                  if (index < subCategory.length - 1)
                    const Divider(
                      height: 1,
                    )
                ],
              )),
    );
  }
}
