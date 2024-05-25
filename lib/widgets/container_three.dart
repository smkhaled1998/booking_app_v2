import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/styles.dart';

class ContainerThree extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;

  const ContainerThree({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double paddingValue = 10.0;

    return Container(
      padding: isColor == null
          ? EdgeInsets.only(
        top: 6,
        left: paddingValue,
        bottom: paddingValue,
        right: paddingValue,
      )
          : EdgeInsets.zero,
      decoration: BoxDecoration(
        color: isColor == null ? Styles.orangeColor : Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${ticket['date']}",
                style: Styles.headLineStyle3.copyWith(
                  color: isColor == null ? Colors.white : Colors.grey,
                ),
              ),
              const Gap(5),
              Text(
                "DATE",
                style: Styles.headLineStyle4.copyWith(
                  color: isColor == null ? Colors.white : Colors.grey,
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${ticket['departure_time']}",
                style: Styles.headLineStyle3.copyWith(
                  color: isColor == null ? Colors.white : Colors.grey,
                ),
              ),
              const Gap(5),
              Text(
                "Departure Time",
                style: Styles.headLineStyle4.copyWith(
                  color: isColor == null ? Colors.white : Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "${ticket['number']}",
                style: Styles.headLineStyle3.copyWith(
                  color: isColor == null ? Colors.white : Colors.grey,
                ),
              ),
              const Gap(5),
              Text(
                "Number",
                style: Styles.headLineStyle4.copyWith(
                  color: isColor == null ? Colors.white : Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
