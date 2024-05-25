import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/styles.dart';
import '../widgets/app-icon-text.dart';
import '../widgets/app_ticket_tab.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          children: [
            Text(
              "What are\n you looking for?",
              style: Styles.headLineStyle1.copyWith(fontSize: 35),
            ),
            const Gap(20),
            const AppTicketTab(
              firstText: "Airline Tickets",
              secondText: "Hotels",
            ),
            const Gap(20),
            const AppIconText(icon: Icons.flight_takeoff_outlined, text: 'Departure'),
            const Gap(12),
            const AppIconText(icon: Icons.flight_land_outlined, text: 'Arrival'),
            const Gap(25),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xD91130CE),
              ),
              child: Center(
                child: Text(
                  "Find tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
            const Gap(35),
            Row(
              children: [
                Text("Upcoming Flights", style: Styles.headLineStyle2),
                const Spacer(),
                InkWell(
                  onTap: () {
                    print('object');
                  },
                  child: Text("View all", style: Styles.headLineStyle4),
                ),
              ],
            ),
            const Gap(15),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 300,
                  width: MediaQuery.of(context).size.width * 0.42,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 3,
                        spreadRadius: 8,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 135,
                        width: 200,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 1,
                              spreadRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/sit.jpg"),
                          ),
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        "20% discount on the early booking of this flight. don't miss out this chance",
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          padding: const EdgeInsets.only(
                            top: 10,
                            right: 20,
                            bottom: 15,
                            left: 15,
                          ),
                          width: MediaQuery.of(context).size.width * 0.44,
                          height: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF3AB8B8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor Survey",
                                style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              const Gap(3),
                              Text(
                                "Take the survey about our services and get discount",
                                style: Styles.headLineStyle3.copyWith(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -40,
                          right: -35,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              border: Border.all(width: 18, color: const Color(0xFF189999)),
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(10),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      padding: const EdgeInsets.only(
                        top: 15,
                        right: 20,
                        bottom: 15,
                        left: 15,
                      ),
                      width: MediaQuery.of(context).size.width * 0.44,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFEC6545),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Take Love",
                            style: Styles.headLineStyle2.copyWith(color: Colors.white),
                          ),
                          const Gap(10),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(text: "😍", style: TextStyle(fontSize: 20)),
                                TextSpan(text: "🥰", style: TextStyle(fontSize: 35)),
                                TextSpan(text: "😘", style: TextStyle(fontSize: 25)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
