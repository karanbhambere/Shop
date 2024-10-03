import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_aplication/components/divider_list_tile.dart';
import 'package:shopping_aplication/route/route_constant.dart';
import 'package:shopping_aplication/screens/profile/components/profile_card.dart';
import 'package:shopping_aplication/screens/profile/components/profile_menu_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const ProfileCard(
            name: 'sepide',
            email: 'theflutterway@gmail.com',
            imageSrc: 'assets/images/login_dark.png',
            // press: (){
            //   Navigator.pushNamed(context, )
            // },
          ),
          Padding(
            padding: const EdgeInsetsDirectional.all(19),
            child: GestureDetector(
              onTap: () {},
              child: AspectRatio(
                aspectRatio: 1.8,
                child: Image.network('https://i.imgur.com/dz0BBom.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Account',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          ProfileMenuListTile(
            text: 'orders',
            svgSrc: "assets/icons/Order.svg",
            press: () {
              Navigator.pushNamed(context, ordersScreenRoute);
            },
          ),
          ProfileMenuListTile(
            text: 'Returns',
            svgSrc: 'assets/icons/Returns.svg',
            press: () {},
          ),
          ProfileMenuListTile(
            text: "Wishlist",
            svgSrc: "assets/icons/Wishlist.svg",
            press: () {},
          ),
          ProfileMenuListTile(
            text: "Addresses",
            svgSrc: "assets/icons/Address.svg",
            press: () {
              Navigator.pushNamed(context, addNewAddressesScreenRoute);
            },
          ),
          ProfileMenuListTile(
            text: "Payment",
            svgSrc: "assets/icons/card.svg",
            press: () {
              Navigator.popAndPushNamed(context, emptyPaymentScreenRoute);
            },
          ),
          ProfileMenuListTile(
            text: "Wallet",
            svgSrc: "assets/icons/Wallet.svg",
            press: () {
              Navigator.popAndPushNamed(context, walletScreenRoute);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Personalliazation',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          DividerListTileWithTrilingText(
            svgSrc: 'assets/icons/Notification.svg',
            title: 'Notification',
            trilingText: 'off',
            press: () {
              Navigator.pushNamed(context, enableNotificationScreenRoute);
            },
          ),
          ProfileMenuListTile(
            text: 'Preferences',
            svgSrc: 'assets/icons/Preferences.svg',
            press: () {
              Navigator.pushNamed(context, preferencesScreenRoute);
            },
          ),
          const SizedBox(
            height: 5,
          ),
          const Text('Settings'),
          ProfileMenuListTile(
              text: "Language",
              svgSrc: 'assets/icons/Language.svg',
              press: () {
                Navigator.pushNamed(context, selectLanguageScreenRoute);
              }),
          ProfileMenuListTile(
              text: "Location",
              svgSrc: 'assets/icons/Location.svg',
              press: () {}),
          ProfileMenuListTile(
            text: "Get Help",
            svgSrc: "assets/icons/Help.svg",
            press: () {
              Navigator.pushNamed(context, getHelpScreenRoute);
            },
          ),
          ProfileMenuListTile(
            text: "FAQ",
            svgSrc: "assets/icons/FAQ.svg",
            press: () {},
            isShowDivider: false,
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            onTap: () {},
            minLeadingWidth: 24,
            leading: SvgPicture.asset(
              'assets/icons/Logout.svg',
              height: 24,
              width: 24,
            ),
          ),
          Text(
            'Log out',
            style: TextStyle(
                color: RenderErrorBox.backgroundColor, fontSize: 14, height: 1),
          )
        ],
      ),
    );
  }
}
