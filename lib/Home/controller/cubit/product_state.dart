part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
     const factory ProductState.Success() = Success;
  const factory ProductState.loading() = loading;
  const factory ProductState.faliure() = faliure;
}
