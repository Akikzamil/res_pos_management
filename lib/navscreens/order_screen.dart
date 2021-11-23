import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:res_pos_management/model/order_list_model.dart';
import 'dart:ui';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:res_pos_management/provider/provider.dart';

import 'package:res_pos_management/screens/order_taken_screen.dart';



class OrderScreen extends StatefulWidget {
  List<OrderList> order;
  OrderScreen(this.order);





  @override
  _OrderScreenState createState() => _OrderScreenState(order);
}

class _OrderScreenState extends State<OrderScreen> {

  List<OrderList> order;



  _OrderScreenState(this.order);

  @override
  Widget build(BuildContext context) {


    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,),


      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: RawScrollbar(
          thickness: 4,
          radius: Radius.circular(5),
         thumbColor: Colors.white.withOpacity(0.2),

          child: ListView.builder(

            itemCount: order.length,
            itemBuilder: (context,i)
            {



                    return Slidable(
                      startActionPane: ActionPane(
                        motion: StretchMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (c) {
                              setState(() {


                               Provider.of<Providers>(context,listen: false).removeAll(i);
                               Provider.of<Providers>(context,listen: false).nul(i);



                              });
                            },
                            backgroundColor: Color(0xFFFE4A49).withOpacity(0.9),
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          )
                        ],
                      ),
                      direction: Axis.horizontal,
                      enabled: true,
                      key: Key(order[i].toString()),
                      endActionPane: ActionPane(
                        motion: StretchMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (c) {
                              setState(() {





                              });
                            },
                            backgroundColor: Color(0xFFFE4A49).withOpacity(0.9),
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          )
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderTaken(i)));


                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 3),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.4),
                            ),
                            gradient: LinearGradient(colors: [
                              Provider.of<Providers>(context, listen: false)
                                          .tableData[i].servingStatus=='Null'
                                  ? Colors.white.withOpacity(0)
                                  : Color(0xff161E54),
                              Provider.of<Providers>(context, listen: false)
                                  .tableData[i].servingStatus=='Null'
                                  ? Colors.white.withOpacity(0.2)
                                  : Color(0xff161E54),
                              Provider.of<Providers>(context, listen: false)
                                  .tableData[i].servingStatus=='Null'
                                  ? Colors.white.withOpacity(0)
                                  : Color(0xff161E54),
                            ]),
                          ),
                          child: ListTile(
                            title: Text(
                              'Table - ${Provider.of<Providers>(context).tableData[i].tableNum.toString()}',
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 28),
                            ),
                            subtitle: Text(
                              Provider.of<Providers>(context,listen: false).tableData[i].servingStatus,
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
        ),

      ),
    );
  }
}
