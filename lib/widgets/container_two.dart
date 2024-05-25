import 'package:flutter/material.dart';

import '../utils/styles.dart';

class ContainerTwo extends StatelessWidget {
  final bool? isColor;
  const ContainerTwo({Key? key, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double boxWidth = 10.0;
    const double boxHeight = 20.0;
    const double lineWidth = 3.0;

    return Container(
      color: isColor == null ? Styles.orangeColor : Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: boxWidth,
            height: boxHeight,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (ctx, constraints) {
                return Flex(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  direction: Axis.horizontal,
                  children: List.generate(
                    (constraints.constrainWidth() / 9).floor(),
                        (index) => SizedBox(
                      width: lineWidth,
                      height: 1,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: isColor == null ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  ).toList(),
                );
              },
            ),
          ),
          Container(
            width: boxWidth,
            height: boxHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          )
        ],
      ),
    );
  }
}
