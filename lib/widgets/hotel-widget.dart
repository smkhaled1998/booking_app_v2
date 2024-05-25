import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/styles.dart';

class HotelWidget extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelWidget({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double containerWidth = MediaQuery.of(context).size.width * 0.6;
    const double containerHeight = 350;
    const double horizontalPadding = 15;
    const double verticalPadding = 17;
    const double imageHeight = 150;
    const double borderRadius = 16;

    return Container(
      width: containerWidth,
      height: containerHeight,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: imageHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("${hotel['image']}"),
              ),
            ),
          ),
          const Gap(10),
          Text(
            "${hotel['place']}",
            style: Styles.headLineStyle2.copyWith(color: const Color(0xFFd2dbd6)),
          ),
          const Gap(8),
          Text(
            "${hotel['destination']}",
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            "\$${hotel['price']}/night",
            style: Styles.headLineStyle1.copyWith(color: const Color(0xFFd2dbd6)),
          ),
        ],
      ),
    );
  }
}
