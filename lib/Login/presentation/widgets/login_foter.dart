import 'package:flutter/material.dart';
import 'package:qittestonaisa/config/constent.dart';

class LoginFoter extends StatelessWidget {
  const LoginFoter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
            text: TextSpan(
                text: "Don\`t have an account? ",
                style: Theme.of(context).textTheme.caption,
                //  TextStyle(color: Colors.black),
                children: const [
              TextSpan(
                  text: "Creat new now!",
                  style: TextStyle(decoration: TextDecoration.underline))
            ])),
        const SizedBox(
          height: appPadding,
        ),
        RichText(
            text: TextSpan(
                text: "By signing up ,you are agree with our  ",
                style: Theme.of(context).textTheme.caption,
                children: const [
              TextSpan(
                  text: " Terms & Conditions",
                  style: TextStyle(decoration: TextDecoration.underline))
            ])),
      ],
    );
  }
}
