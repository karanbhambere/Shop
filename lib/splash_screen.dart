import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_aplication/screens/bookmark/bookmark_screen.dart';
import 'package:shopping_aplication/screens/card/card_screen.dart';
import 'package:shopping_aplication/screens/discover/discover_screen.dart';
import 'package:shopping_aplication/screens/profile/profile_screen.dart';
import 'package:shopping_aplication/screens/shop/shop_sceen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int bottomIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Shoplon',
            strutStyle: StrutStyle(fontSize: 20),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.message),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: [
        const ShopPage(),
        const DiscoverScreen(),
        const BookmarkScreen(),
        const CardScreen(),
        const ProfileScreen(),
      ][bottomIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomIndex,
        onTap: (value) {
          setState(() {
            bottomIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Shop',
            icon: SvgPicture.asset("assets/icons/Shop.svg"),
          ),
          BottomNavigationBarItem(
            label: 'Discover',
            icon: SvgPicture.asset("assets/icons/Category.svg"),
          ),
          BottomNavigationBarItem(
            label: 'Bookmark',
            icon: SvgPicture.asset("assets/icons/Bookmark.svg"),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: SvgPicture.asset("assets/icons/Bag.svg"),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: SvgPicture.asset(
              "assets/icons/Profile.svg",
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
