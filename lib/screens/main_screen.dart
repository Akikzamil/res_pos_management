import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:res_pos_management/model/listttttt.dart';
import 'package:res_pos_management/model/order_list_model.dart';

import 'package:res_pos_management/navscreens/list.dart';
import 'package:res_pos_management/navscreens/order_screen.dart';
import 'package:res_pos_management/navscreens/settings.dart';

class MainScreen extends StatefulWidget {


  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  bool orderss = true;




  List<OrderList> order = [
    OrderList(tableNum: 1, status: false, list: null),
    OrderList(tableNum: 2, status: false, list: [
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 20,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 30,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 20,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 40,
        picture: 'images/img.png',
      ),
    ]),
    OrderList(tableNum: 3, status: false, list: null),
    OrderList(tableNum: 4, status: false, list: [
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 20,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 30,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 20,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 40,
        picture: 'images/img.png',
      ),
    ]),
    OrderList(tableNum: 5, status: false, list: null),
    OrderList(tableNum: 6, status: false, list: [
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 20,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 30,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 20,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 40,
        picture: 'images/img.png',
      ),
    ]),
    OrderList(tableNum: 7, status: false, list: [
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 20,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 30,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 20,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 40,
        picture: 'images/img.png',
      ),
    ]),
    OrderList(tableNum: 8, status: false, list: [
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 20,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 30,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 20,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 40,
        picture: 'images/img.png',
      ),
    ]),
    OrderList(tableNum: 9, status: false, list: [
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 20,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 30,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 20,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 40,
        picture: 'images/img.png',
      ),
    ]),
    OrderList(tableNum: 10, status: false, list: [
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 20,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 30,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 20,
        picture: 'images/img.png',
      ),
      Listt(
        itemName: 'Soup',
        qty: 2,
        itemPrice: 40,
        picture: 'images/img.png',
      ),
    ]),
  ];

  int selectedIndex = 0;
  List<String> bar = ['Order', 'Order List', 'Settings'];





  @override
  Widget build(BuildContext context) {



    List lists = [OrderScreen(order), Lists(order,orderss), Settings()];
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [ Color(0xff2b5876 ),Color(0xff4e4376),],
      )),
      child: Scaffold(
        body: lists[selectedIndex],
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            titleSpacing: 20,
            shadowColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            elevation: 5,
            backgroundColor: Colors.purple.shade900,
            title: Text(
              bar[selectedIndex],
              style: GoogleFonts.lato(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,

          animationDuration: Duration(milliseconds: 400),
          backgroundColor: Colors.transparent,
          color: Colors.purple.shade900,

          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },

          // selectedItemColor: Color(0xff3AB9E8),
          // unselectedItemColor: Colors.white,

          items: [
            Icon(
              Icons.home_outlined,
              size: 25,
              color: Colors.white,
            ),
            Icon(
              Icons.format_list_bulleted_outlined,
              size: 25,
              color: Colors.white,
            ),
            Icon(
              Icons.settings_outlined,
              size: 25,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
