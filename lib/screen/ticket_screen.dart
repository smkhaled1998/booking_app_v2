import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/styles.dart';
import '../utils/ticket-ionfo-list.dart';
import '../widgets/app_ticket_tab.dart';
import '../widgets/container_one.dart';
import '../widgets/container_three.dart';
import '../widgets/container_two.dart';
import '../widgets/ticket-view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Stack(
            children: [
              ListView(
                children: [
                  Text("Tickets", style: Styles.headLineStyle1.copyWith(fontSize: 40)),
                  const Gap(20),
                  const AppTicketTab(firstText: "Upcoming", secondText: "Previous"),
                  const Gap(10),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                child: Column(
                                  children: [
                                    ContainerOne(ticket: ticketList[0], isColor: false),
                                    const ContainerTwo(isColor: false),
                                    ContainerThree(ticket: ticketList[0], isColor: false),
                                  ],
                                ),
                              ),
                              const Gap(20),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Flutter Dev", style: Styles.headLineStyle3.copyWith(color: Colors.black)),
                                        Text("A215698858", style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                    const Gap(5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Passenger", style: Styles.headLineStyle4),
                                        const Text("Passport"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(20),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("4440 5658 2100", style: Styles.headLineStyle3.copyWith(color: Colors.black)),
                                        Text("B2GFD5", style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                    const Gap(5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Number of E-ticket", style: Styles.headLineStyle4),
                                        const Text("Booking code"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(20),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 40,
                                              width: 40,
                                              child: const Image(image: AssetImage("assets/images/visa.png")),
                                            ),
                                            Text(" **** 2100", style: Styles.headLineStyle3.copyWith(color: Colors.black)),
                                          ],
                                        ),
                                        const Text("\$263", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16)),
                                      ],
                                    ),
                                    const Gap(5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Payment method", style: Styles.headLineStyle4),
                                        const Text("Price"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(30),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: BarcodeWidget(
                                  barcode: Barcode.code128(),
                                  drawText: false,
                                  color: Styles.textColor,
                                  data: 'https://github.com/martinovovo',
                                  height: 70,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(10),
                        TicketView(ticket: ticketList[0], isColor: false),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                top: 295,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 3, color: Styles.textColor),
                  ),
                  child: CircleAvatar(
                    maxRadius: 4,
                    backgroundColor: Styles.textColor,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 295,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 3, color: Styles.textColor),
                  ),
                  child: CircleAvatar(
                    maxRadius: 4,
                    backgroundColor: Styles.textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
