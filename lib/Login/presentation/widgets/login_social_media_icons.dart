import 'package:flutter/material.dart';
import 'package:qittestonaisa/config/constent.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "or login with",
          style: Theme.of(context).textTheme.caption,
        ),
        const SizedBox(
          height: appPadding,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SocialMediaIcon(
              url: "assets/icons/google_icon.png",
            ),
            SocialMediaIcon(
              url: "assets/icons/facebook_icon.png",
            ),
            SocialMediaIcon(
              url: "assets/icons/twitter_icon.png",
            ),
          ],
        )
      ],
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: const EdgeInsets.all(appPadding / 2),
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
      child: Image.asset(
        url,
      ),
    );
  }
}
