
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app-layout.dart';
import '../utils/hotel-info-list.dart';
import '../utils/styles.dart';
import '../utils/ticket-ionfo-list.dart';
import '../widgets/hotel-widget.dart';
import '../widgets/ticket-view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backGroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal:20),
          child: SafeArea(
            child: Column(
              children: [
                const Gap(20),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Good Morning",style: Styles.headLineStyle3,),
                      const Gap(5),
                      Text("Book tickets",style: Styles.headLineStyle1,),

                    ],),
                   const Spacer(),
                    Container(
                      width: 40,
                      height: 40,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: const Image(
                        image: AssetImage("assets/images/img_1.png"),
                      ),

                    )
                  ],
                ),
                const Gap(25),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_info_regular,color: Color(0xFFBFC205),),
                      const Gap(3),
                      Text('search',style: Styles.headLineStyle4,)
                    ],
                  ),
                ),
                const Gap(25),
                Row(
                  children: [
                    Text("Upcoming Flights",style: Styles.headLineStyle2,),
                    const Spacer(),
                    InkWell(
                        onTap: (){
                          print('object');
                        },
                        child: Text("View all",style: Styles.headLineStyle4))
                  ],
                ),
                const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                children: ticketList.map((ticket)=>TicketView(ticket: ticket)).toList(),
              )
            ),
                const Gap(15),
                Row(
                  children: [
                    Text("Hotels",style: Styles.headLineStyle2,),
                    const Spacer(),
                    InkWell(
                        onTap: (){
                          print('object');
                        },
                        child: Text("View all",style: Styles.headLineStyle4))
                  ],
                ),
                const Gap(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList.map((hotel) =>HotelWidget(hotel: hotel)).toList()
              ),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
