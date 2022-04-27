import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qittestonaisa/Home/data/home_repo.dart';
import 'package:qittestonaisa/get_it_.dart/my_get_it_objects.dart';
import 'package:rxdart/rxdart.dart';

part 'categories_state.dart';
part 'categories_cubit.freezed.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesState.initial());
  List<String> categories = [];
  late BehaviorSubject<List<String>> subjectCategories;
  BehaviorSubject<List<String>> subject = new BehaviorSubject<List<String>>();


  void getCatigories() async {
    print(" getCatigories");
    try {
      emit(CategoriesState.loading());
      final List data = await locator.get<HomePageRepo>().getCategories();

      data.forEach((element) {
        categories.add(element);
      });
      subject.add(categories);
      print("data is ${categories[0]}");
      emit(CategoriesState.Success());
    } catch (e) {
      print("error from controller $e");
      emit(const CategoriesState.faliure());
    }
  }
}
