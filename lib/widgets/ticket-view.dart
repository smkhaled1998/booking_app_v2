
import 'package:flutter/material.dart';

import 'container_one.dart';
import 'container_three.dart';
import 'container_two.dart';

class TicketView extends StatelessWidget {

  final Map<String,dynamic> ticket;
  final bool? isColor;

  const TicketView({Key? key,required this.ticket,this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:MediaQuery.of(context).size.width*.85,
      child: Container(
        margin:isColor==null?  EdgeInsets.only(right:20):EdgeInsets.zero,
        child: Column(
          children: [
            ContainerOne(ticket: ticket),
            const ContainerTwo(),
            ContainerThree(ticket: ticket),

          ],
        ),
      ),
    );
  }


}
