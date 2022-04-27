part of 'categories_cubit.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _Initial;
    const factory CategoriesState.Success() = Success;
  const factory CategoriesState.loading() = loading;
  const factory CategoriesState.faliure() = faliure;
}
