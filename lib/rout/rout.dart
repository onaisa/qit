import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:qittestonaisa/Home/presentation/screens/home_screen.dart';
import 'package:qittestonaisa/Login/presentation/screen/login_screen.dart';

class FlurRout {
  static final FluroRouter router = FluroRouter();

  static Handler loginHndler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
       const   LoginScreen());

  static Handler homepageHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
         const HomeScreen());

  static void setupRout() {
    router.define("/login", handler: loginHndler);
    router.define("/home", handler: homepageHandler,transitionType: TransitionType.fadeIn);
  }
}
