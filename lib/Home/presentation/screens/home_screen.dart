import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qittestonaisa/Home/controller/cubit/categories_cubit.dart';
import 'package:qittestonaisa/Home/controller/cubit/homepage_cubit.dart';
import 'package:qittestonaisa/Home/controller/cubit/product_cubit.dart';
import 'package:qittestonaisa/Home/presentation/widgets/categories_grid_item.dart';
import 'package:qittestonaisa/Home/presentation/widgets/categories_list.dart';
import 'package:qittestonaisa/Home/presentation/widgets/gridview_widget.dart';
import 'package:qittestonaisa/config/constent.dart';
import 'package:qittestonaisa/config/theme/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomepageCubit(),
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: const Icon(Icons.menu),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: appPadding / 4),
              child: Icon(Icons.notifications),
            )
          ],
        ),
        body: BlocProvider(
          create: (context) => CategoriesCubit(),
          child: BlocProvider(
            create: (context) => ProductCubit(),
            child: Column(
              children: [
                BlocProvider(
                  create: (context) => CategoriesCubit(),
                  child: CategoriesList(),
                ),
             
              const  Expanded(
                  child: GridViewWidget(),
                ),
           
              ],
            ),
          ),
        ),
      ),
    );
  }
}
