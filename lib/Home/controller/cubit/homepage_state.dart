part of 'homepage_cubit.dart';

@freezed
class HomepageState with _$HomepageState {
  const factory HomepageState.initial() = _Initial;
  const factory HomepageState.changeCategory({required int index}) = changeCategory;
}
