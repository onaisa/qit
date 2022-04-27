


import 'package:flutter/material.dart';
class ProductItem extends StatelessWidget {
  const ProductItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
      //     Expanded(
      //       child: Stack(
      //         alignment: AlignmentDirectional.bottomStart,
      //         children: [
      //           Image(
      //             image: NetworkImage(productModel.image),
      //             height: 150.0,
      //             width: 150.0,
      //           ),
      //           if (productModel.discount != 0)
      //             Container(
      //               height: 25.0,
      //               width: 70.0,
      //               alignment: AlignmentDirectional.bottomStart,
      //               child: Text(
      //                 'Discount',
      //                 style: TextStyle(color: Colors.white, fontSize: 14.0),
      //                 maxLines: 1,
      //               ),
      //               decoration: BoxDecoration(
      //                 color: Colors.red.withOpacity(0.7),
      //               ),
      //               padding: EdgeInsets.symmetric(horizontal: 3.0),
      //             )
      //         ],
      //       ),
      //     ),
      //     Expanded(
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           children: [
      //             Text(
      //               productModel.name,
      //               maxLines: 2,
      //               overflow: TextOverflow.ellipsis,
      //               style: TextStyle(
      //                 fontSize: 14.0,
      //                 height: 1.3,
      //               ),
      //             ),
      //             Row(children: [
      //               Text(
      //                 '${productModel.price.round()}',
      //                 style: TextStyle(
      //                   fontSize: 12.0,
      //                   color: Colors.blue,
      //                 ),
      //               ),
      //               SizedBox(
      //                 width: 5.0,
      //               ),
      //               if (productModel.discount != 0)
      //                 Text(
      //                   '${productModel.oldPrice.round()}',
      //                   style: TextStyle(
      //                     fontSize: 10.0,
      //                     color: Colors.grey,
      //                     decoration: TextDecoration.lineThrough,
      //                   ),
      //                 ),
      //             ]),
      //             SizedBox(
      //               height: 10.0,
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 CircleAvatar(
      //                   backgroundColor: AppshopCubit.get(context)
      //                               .isfavorites[productModel.id] ==
      //                           true
      //                       ? Colors.blue
      //                       : Colors.grey[200],
      //                   child: IconButton(
      //                       onPressed: () {
      //                         AppshopCubit.get(context)
      //                             .changFavorites(productModel.id);
      //                         print(" id is ${productModel.id}");
      //                       },
      //                       icon: Icon(Icons.favorite_border_outlined)),
      //                 ),
      //                 SizedBox(
      //                   width: 10.0,
      //                 ),
      //                 CircleAvatar(
      //                   backgroundColor:
      //                       AppshopCubit.get(context).isCart[productModel.id] ==
      //                               true
      //                           ? Colors.green
      //                           : Colors.grey[200],
      //                   radius: 20.0,
      //                   child: IconButton(
      //                       onPressed: () {
      //                         AppshopCubit.get(context)
      //                             .changCart(productModel.id);
      //                       },
      //                       icon: Icon(Icons.add_shopping_cart)),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
        ],
      ),
    );
  }
}
