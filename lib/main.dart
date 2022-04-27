import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qittestonaisa/Home/presentation/screens/home_screen.dart';
import 'package:qittestonaisa/config/blocobserver.dart';
import 'package:qittestonaisa/config/dio.dart';
import 'package:qittestonaisa/config/theme/theme.dart';
import 'package:qittestonaisa/get_it_.dart/my_get_it_objects.dart';
import 'package:qittestonaisa/rout/rout.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  FlurRout.setupRout();
  setup();

  DioHelper.init();

  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: MyBlocObserver(),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      theme: MyLigthThem,
      themeMode: ThemeMode.light,
      onGenerateRoute: FlurRout.router.generator,
      home: HomeScreen(),
    );
  }
}
