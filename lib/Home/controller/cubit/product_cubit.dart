import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qittestonaisa/Home/data/home_repo.dart';
import 'package:qittestonaisa/Home/data/models/product_model.dart';
import 'package:qittestonaisa/get_it_.dart/my_get_it_objects.dart';
import 'package:rxdart/rxdart.dart';

part 'product_state.dart';
part 'product_cubit.freezed.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductState.initial());

  List<ProductModel> productes = [];

  void getProducts({required String category}) async {
    print(" producte");
    productes = [];
    try {
      emit(ProductState.loading());
      final List data = await locator
          .get<HomePageRepo>()
          .getProductCategories(category: category);

      data.forEach((element) {
        productes.add(ProductModel.fromJson(element));
      });

      emit(ProductState.Success());
    } catch (e) {
      print("error from controller $e");
      emit(const ProductState.faliure());
    }
  }
}
