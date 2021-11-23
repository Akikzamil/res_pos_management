import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';

import 'package:res_pos_management/model/order_list_model.dart';

import 'package:res_pos_management/provider/provider.dart';
import 'package:res_pos_management/screens/order.dart';
import 'package:res_pos_management/screens/order_list_itemsoo.dart';




class Lists extends StatefulWidget {
  List<OrderList> li;
  bool orderss;

  Lists(this.li,this.orderss);

  @override
  _ListState createState() => _ListState(li,orderss);
}

class _ListState extends State<Lists> {


  List<OrderList> li;
  bool orderss;

  _ListState(this.li,this.orderss);

  @override
  Widget build(BuildContext context) {

    totalPrice(int it){
      double totalPrice = 0;

      for(int i =0;i<Provider.of<Providers>(context,).tableData[it].item.length;i++){
        totalPrice = totalPrice+Provider.of<Providers>(context,).tableData[it].item[i].itemPrice*Provider.of<Providers>(context,).tableData[it].item[i].itemQuantity;

      }
      return totalPrice;
    }








      print(li);
    return ListView.builder(

        itemCount: Provider.of<Providers>(context,listen: false).tableData.length,
        itemBuilder: (context, i) =>

           Provider.of<Providers>(context).tableData[i].servingStatus=='Ordered'? GestureDetector(
                onTap: () {
                  setState(() {
                    showMaterialModalBottomSheet(

                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => OrderListItemList(i),
                    );
                  });

                },
                child: Stack(
                  children: [


                    Container(

                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    decoration: BoxDecoration(
                      gradient: RadialGradient(


                        center: Alignment.bottomCenter,

                        radius: 1.2,


                        colors: [
                          Colors.white.withOpacity(0.3),
                          Colors.white.withOpacity(0.2),
                          Colors.white.withOpacity(0.1),
                        ]

                      ),

                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Table - ${Provider.of<Providers>(context,listen: false).tableData[i].tableNum.toString()}',
                              style: GoogleFonts.lato(
                                  color: Colors.white, fontSize: 23),
                            ),
                            Text(
                              Provider.of<Providers>(context,listen: false).tableData[i].servingStatus,
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '${totalPrice(i).toString()}\$',
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),


                  ],
                )


              ): Container()
            );
  }
}
