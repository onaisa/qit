import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qittestonaisa/Home/controller/cubit/homepage_cubit.dart';
import 'package:qittestonaisa/Home/controller/cubit/product_cubit.dart';
import 'package:qittestonaisa/Home/presentation/widgets/categories_grid_item.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  void initState() {
    BlocProvider.of<ProductCubit>(context).getProducts(
        category: BlocProvider.of<HomepageCubit>(context).categoryName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        return state.when(
          faliure:()=>Center(child: Text("no connection",style:  Theme.of(context).textTheme.headline5!.copyWith(color: Colors.red),),) 
          ,
          initial:()=> Container(),
          loading: ()=>const SizedBox(height: 50.0,width: 50.0,child: Center(child: CircularProgressIndicator(),),),
          Success: () =>  SizedBox(
          child: GridView.count(
              crossAxisCount: 2,
           
              shrinkWrap: true,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0,
              childAspectRatio: 1 / 1.5,
              children: List.generate(
               BlocProvider.of<ProductCubit>(context).productes.length,
                (index) => CategoriesItem(product:BlocProvider.of<ProductCubit>(context).productes[index] ,),
              )),
        ),);
       
      },
    );
  }
}
