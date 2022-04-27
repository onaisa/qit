import 'package:flutter/material.dart';
import 'package:qittestonaisa/config/constent.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: appPadding * 2,
        ),
        Text(
          "Login",
          style: Theme.of(context).textTheme.headline2,
        ),
        const SizedBox(
          height: appPadding / 2,
        ),
        Text(
          "Please Login To Your account",
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
    );
  }
}
