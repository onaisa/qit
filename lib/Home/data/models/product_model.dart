import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qittestonaisa/Home/data/models/rating_model.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel(
      {num? price,
      String? title,
      int? id,
       String? image,
       RatingModel? rating,
       }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);



}