import 'package:flutter/material.dart';
import 'package:qittestonaisa/Home/data/models/product_model.dart';
import 'package:qittestonaisa/Home/presentation/widgets/background_widget.dart';
import 'package:qittestonaisa/Home/presentation/widgets/forground_widget.dart';
import 'package:qittestonaisa/config/constent.dart';
import 'package:qittestonaisa/config/theme/theme.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({Key? key, required this.product}) : super(key: key);
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      padding: const EdgeInsets.all(appPadding / 2),
      child: Stack(
        children: [
          const BackGroundWidget(),
          MyForgrondWidget(
            product: product,
          ),
          const CartWidget()
        ],
      ),
    );
  }
}

class CartWidget extends StatelessWidget {
  const CartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomEnd,
      child: Container(
        height: 50.0,
        width: 50.0,
        margin:
            const EdgeInsetsDirectional.only(end: appPadding / 2, bottom: 70.0),
        child: const Center(
          child: Icon(Icons.add_shopping_cart),
        ),
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }
}
