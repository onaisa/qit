import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homepage_state.dart';
part 'homepage_cubit.freezed.dart';

class HomepageCubit extends Cubit<HomepageState> {
  HomepageCubit() : super(HomepageState.initial());
  String categoryName = 'electronics';
  int categoiyIndex = 0;

  void changeCategoyFun({required String name, required int index}) {
    categoryName = name;
    categoiyIndex = index;
    print('categoiyIndex $categoiyIndex');
    emit(HomepageState.changeCategory(index: categoiyIndex));
  }
}
