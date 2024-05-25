import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/styles.dart';

class ContainerOne extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;

  const ContainerOne({Key? key, this.isColor, required this.ticket})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isColor == null ? const EdgeInsets.all(10) : const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: isColor == null ? const Color(0xFF526799) : Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "${ticket['from']['code']}",
                style: Styles.headLineStyle3.copyWith(
                  color: isColor == null ? Colors.white : Colors.grey,
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: isColor == null ? Colors.white : Colors.cyan,
                    width: 3.2,
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    SizedBox(
                      height: 24,
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              (constraints.constrainWidth() / 6).floor(),
                                  (index) => const SizedBox(
                                width: 3,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(color: Colors.grey),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Center(
                      child: Transform.rotate(
                        angle: 1.6,
                        child: Icon(
                          Icons.local_airport_outlined,
                          color: isColor == null ? Colors.white : Colors.cyan,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: isColor == null ? Colors.white : Colors.cyan,
                    width: 3.2,
                  ),
                ),
              ),
              const Spacer(),
              Text(
                "${ticket['to']['code']}",
                style: Styles.headLineStyle3.copyWith(
                  color: isColor == null ? Colors.white : Colors.grey,
                ),
              ),
            ],
          ),
          const Gap(4),
          Row(
            children: [
              Text(
                "${ticket['from']['name']}",
                style: Styles.headLineStyle4.copyWith(
                  color: isColor == null ? Colors.white : Colors.grey,
                ),
              ),
              const Spacer(),
              Text(
                "${ticket['flying_time']}",
                style: Styles.headLineStyle4.copyWith(
                  color: isColor == null ? Colors.white : Colors.grey,
                ),
              ),
              const Spacer(),
              Text(
                "${ticket['to']['name']}",
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
