import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:res_pos_management/order_taken_nav/beverages.dart';
import 'package:res_pos_management/order_taken_nav/dessert.dart';
import 'package:res_pos_management/order_taken_nav/list_of_items.dart';
import 'package:res_pos_management/order_taken_nav/main_course.dart';
import 'package:res_pos_management/order_taken_nav/start.dart';
import 'package:res_pos_management/provider/provider.dart';
class OrderTaken extends StatefulWidget {
  int i;
  OrderTaken(this.i);





  @override
  _OrderTakenState createState() => _OrderTakenState(i);
}

class _OrderTakenState extends State<OrderTaken> {

int i;

_OrderTakenState(this.i);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [ Color(0xff2b5876 ),Color(0xff4e4376),],
          )),

      child: DefaultTabController(
        length: 4,

        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(

            centerTitle: false,
            title: Text(
              'Table - ${Provider.of<Providers>(context).tableData[i].tableNum.toString()}',
              style: GoogleFonts.lato(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),





            backgroundColor: Colors.purple.shade900,
            foregroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
            ),

            bottom: TabBar(
              isScrollable: true,

              indicatorColor: Colors.white,
              indicatorWeight: 1,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),

              tabs: [

                Tab(child: Text('Start',style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 25
                ),),),
                Tab(child: Text('Main Course',style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 25
                ),),),
                Tab(child: Text('Beverages',style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 25
                ),),),
                Tab(child: Text('Dessert',style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 25
                ),),),

              ],
            ),
          ),
          body: TabBarView(
            children: [
              Start(i),
              MainCourse(i),
              Beverages(i),
              Dessert(i)

            ],
          ),
          floatingActionButton: GestureDetector(
            onTap: (){
              showMaterialModalBottomSheet(

                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => ListOfItams(i),
              );
            },
            child: Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width*0.2,
                height: MediaQuery.of(context).size.width*0.2,

                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white.withOpacity(0.1),width: 1),
                    shape: BoxShape.circle,

                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,

                        colors: [
                          Color(0xff448bc4),
                          Colors.purple.shade900,
                          Color(0xff448bc4),


                        ]
                    )
                ),
              ),
              ClipOval(child: BackdropFilter(

                child: Container(
                  width: MediaQuery.of(context).size.width*0.2,
                  height: MediaQuery.of(context).size.width*0.2,

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white.withOpacity(0.1),width: 1),
                      shape: BoxShape.circle,

                      color: Colors.transparent
                  ),
                ),
                filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),),),
              Container(
              width: MediaQuery.of(context).size.width*0.2,
              height: MediaQuery.of(context).size.width*0.2,

              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.1),width: 1),
                  shape: BoxShape.circle,

                  color: Colors.transparent
              ),
              child: Icon(Icons.list_alt_outlined,color: Colors.white,size: 40,),

            ),

            ],),
          ),
        ),
      ),
    );
  }
}
