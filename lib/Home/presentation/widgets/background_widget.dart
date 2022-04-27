import 'package:flutter/material.dart';
import 'package:qittestonaisa/config/constent.dart';
import 'package:qittestonaisa/config/theme/theme.dart';

class BackGroundWidget extends StatelessWidget {
  const BackGroundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade600,
              borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
      Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 200.0,
          decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0))),
        ),
      ),
      // Align(
      //   alignment: Alignment.topCenter,
      //   child: SizedBox(
      //     height: 225.0,
      //     child: Stack(
      //       children: [
      //         Align(
      //           alignment: Alignment.topCenter,
      //           child: Container(
      //             height: 200.0,
      //             decoration: const BoxDecoration(
      //                 color: Colors.grey,
      //                 borderRadius: BorderRadius.only(
      //                     topRight: Radius.circular(15.0),
      //                     topLeft: Radius.circular(15.0))),
      //           ),
      //         ),
              // Align(
              //   alignment: AlignmentDirectional.bottomEnd,
              //   child: Container(
              //     height: 50.0,
              //     width: 50.0,
              //     margin: const EdgeInsetsDirectional.only(end: appPadding / 2),
              //     child: const Center(
              //       child: Icon(Icons.add_shopping_cart),
              //     ),
              //     decoration: BoxDecoration(
              //         color: primaryColor,
              //         borderRadius: BorderRadius.circular(15.0)),
              //   ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    ]);
  }
}
