import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qittestonaisa/Home/controller/cubit/categories_cubit.dart';
import 'package:qittestonaisa/Home/presentation/widgets/categories_name.dart';
import 'package:qittestonaisa/config/constent.dart';

class CategoriesList extends StatefulWidget {
  CategoriesList({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {

  @override
  void initState() {
    BlocProvider.of<CategoriesCubit>(context).getCatigories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (context, state) {
          return state.when(
              initial: () => const SizedBox(),
              Success: () => CategoriesWidget(),
              loading: () => LinearProgressIndicator(),
              faliure: () => Icon(
                    Icons.error,
                    color: Colors.red,
                  ));
        },
      ),
    );
  }
}

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,
    // required this.categories,
  }) : super(key: key);

  // final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: BlocProvider.of<CategoriesCubit>(context).subject,
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          child: ListView.separated(
              controller: ScrollController(),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(appPadding / 4),
                    child: CategoriesName(
                      index: index,
                      name: snapshot.data[index],
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    width: appPadding / 2,
                  ),
              itemCount: snapshot.data.length),
        );
      },
    );
  }
}
