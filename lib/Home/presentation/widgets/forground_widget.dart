import 'package:flutter/material.dart';
import 'package:qittestonaisa/Home/data/models/product_model.dart';
import 'package:qittestonaisa/config/constent.dart';
import 'package:qittestonaisa/config/theme/theme.dart';

class MyForgrondWidget extends StatelessWidget {
  const MyForgrondWidget({
    required this.product,
    Key? key,
  }) : super(key: key);
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(appPadding / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(appPadding / 4),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    children: [
                      Text(
                        product.rating!.rate.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20.0,
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.favorite)
              ],
            ),
          ),
          Expanded(
            child:
             Image.network(
              product.image!,
              gaplessPlayback: true,
            ),
          ),
          SizedBox(
            height: 100.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: appPadding / 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding:
                        const EdgeInsetsDirectional.only(end: appPadding / 2),
                    height: 70,
                    child: Center(
                      child: Text(
                        product.title ?? "",
                        maxLines: 2,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children:  [
                        Text(
                          "\$ ${product.price}",
                          style: TextStyle(color: Colors.white, fontSize: 24.0),
                        ),
                       const Text("\$10.12",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                decoration: TextDecoration.lineThrough)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
