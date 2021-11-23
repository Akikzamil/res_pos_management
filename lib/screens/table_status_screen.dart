import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:res_pos_management/model/listttttt.dart';

class TableStatusScreen extends StatefulWidget {

  List<Listt>? list;
  int tableNum;


  TableStatusScreen( this.list,this.tableNum);

  @override
  _TableStatusScreenState createState() => _TableStatusScreenState(list!,tableNum);
}

class _TableStatusScreenState extends State<TableStatusScreen> {
  List<Listt>? list;
  int tableNum;


  _TableStatusScreenState(this.list,this.tableNum);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff09203F), Color(0xff537895)],
          )),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(

          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(


                title: Text('Table-${tableNum.toString()}',
                  style: GoogleFonts.lato(
                  color: Colors.white,fontSize: 30,fontWeight: FontWeight.w300

                ),

                ),
                centerTitle: true,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(

                child: new BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: new Container(
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                    width: 200.0,
                    height: MediaQuery.of(context).size.height*1,
                    decoration: new BoxDecoration(

                      border: Border.all(color: Colors.white,width: 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                        color: Colors.white.withOpacity(0.2)
                    ),
                    child:  GridView.builder(
                     itemCount: list!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20, crossAxisCount: 2
                      ),
                      itemBuilder: (context,i)=>Container(

                      ),

                    )
                  ),

                    ),
                  ),
                ),


          ],

        ),
      ),
    );
  }
}
