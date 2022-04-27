import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qittestonaisa/Home/controller/cubit/homepage_cubit.dart';
import 'package:qittestonaisa/Home/controller/cubit/product_cubit.dart';
import 'package:qittestonaisa/config/theme/categories_text_style.dart';

class CategoriesName extends StatelessWidget {
  const CategoriesName({Key? key, required this.index, required this.name})
      : super(key: key);
  final String name;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        BlocProvider.of<HomepageCubit>(context)
            .changeCategoyFun(name: name, index: index);
        BlocProvider.of<ProductCubit>(context).getProducts(category: name);
      },
      child: BlocBuilder<HomepageCubit, HomepageState>(
        builder: (context, state) {
          return state.when(
              changeCategory: (indexselected) => Text(
                    name,
                    style: index == indexselected
                        ? CategoriesTextStyle.selectedTextStyle
                        : CategoriesTextStyle.normalTextStyle,
                  ),
              initial: () => Text(
                    name,
                    style: index == 0
                        ? CategoriesTextStyle.selectedTextStyle
                        : CategoriesTextStyle.normalTextStyle,
                  ));
        },
      ),
    );
  }
}
