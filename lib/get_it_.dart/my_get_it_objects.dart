import 'package:get_it/get_it.dart';
import 'package:qittestonaisa/Home/data/home_repo.dart';
import 'package:qittestonaisa/Login/data/login_repo.dart';
import 'package:qittestonaisa/rout/rout.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerLazySingleton<loginRepo>(() => loginRepo());
  locator.registerLazySingleton<HomePageRepo>(() => HomePageRepo());
}
