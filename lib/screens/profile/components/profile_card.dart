import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.name,
    required this.email,
    required this.imageSrc,
    this.proLableText = "Pro",
    this.isPro = false,
    this.press,
    this.isShowHi = true,
    this.isShowArrow = true,
  });
  final String name, email, imageSrc;
  final String proLableText;
  final bool isPro, isShowHi, isShowArrow;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        radius: 30,
        child: Container(
          padding: const EdgeInsets.all(
              CircularProgressIndicator.strokeAlignOutside),
          child: Image.asset(
            'assets/images/login_dark.png',
          ),
        ),
      ),
      title: Row(
        children: [
          Text(
            isShowHi ? 'Hi,$name' : name,
            style: const TextStyle(),
          )
        ],
      ),
    );
  }
}
