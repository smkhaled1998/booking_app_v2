
import 'package:bookingapp_v2/screen/search-screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import 'home-screen.dart';
import 'ticket_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedItem=0;
  List <Widget> screen =const[
   HomeScreen(),
   SearchScreen(),
    TicketScreen(),
   Center(child: Text("profile")),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10 ,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        onTap:(index){
          setState(() {
            _selectedItem=index;
          });
        } ,
        currentIndex:_selectedItem ,
        items: const[
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon:Icon(FluentSystemIcons.ic_fluent_home_filled) ,label: 'home'),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon:Icon(FluentSystemIcons.ic_fluent_search_filled) ,label: 'search'),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon:Icon(FluentSystemIcons.ic_fluent_ticket_filled) ,label: 'ticket'),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon:Icon(FluentSystemIcons.ic_fluent_person_filled) ,label: 'profile')
      ],),
    );
  }

}
