import 'package:flutter/material.dart';

class AppTicketTab extends StatelessWidget {
  final String firstText;
  final String secondText;
  const AppTicketTab({Key? key, required this.firstText, required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),  // Directly use 50
        color: const Color(0xFFF4F6FD),
      ),
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.44,
              padding: const EdgeInsets.all(11),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
                color: Colors.white,
              ),
              child: Center(child: Text(firstText)),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.44,
              padding: const EdgeInsets.all(11),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Colors.transparent,
              ),
              child: Center(child: Text(secondText)),
            ),
          ],
        ),
      ),
    );
  }
}
