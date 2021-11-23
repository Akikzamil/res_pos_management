import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:res_pos_management/model/items.dart';
import 'package:res_pos_management/provider/desert_provider.dart';
import 'package:res_pos_management/provider/provider.dart';

class Dessert extends StatefulWidget {
  int i;


  Dessert(this.i);

  @override
  _DessertState createState() => _DessertState(i);
}

class _DessertState extends State<Dessert> {

  int it;


  _DessertState(this.it);


  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: GridView.builder(
          itemCount: Provider.of<DessertProvider>(context,listen: false).items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 1


          ) ,

          itemBuilder: (context,i)=>GestureDetector(
            onTap: (){
              setState(() {

                if(Provider.of<DessertProvider>(context,listen: false).tableData[it].item[i].orderStatus == false){
                  Provider.of<DessertProvider>(context,listen: false).orderStatusTrue(i,it);
                  Provider.of<Providers>(context,listen: false).update(it, Provider.of<DessertProvider>(context,listen: false).items[i]);


                }else{
                  Provider.of<DessertProvider>(context,listen: false).orderStatusFalse(i,it);


                  Provider.of<Providers>(context,listen: false).remove(it, Provider.of<DessertProvider>(context,listen: false).items[i]);


                }



              });


            },
            child: Stack(
              children: [
                Container(

                  padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
                  decoration: BoxDecoration(


                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors:  [
                          Provider.of<DessertProvider>(context,listen: false).tableData[it].item[i].orderStatus==false?Colors.white.withOpacity(0.1):Colors.purple.shade900.withOpacity(1),
                          Provider.of<DessertProvider>(context,listen: false).tableData[it].item[i].orderStatus==false?Colors.white.withOpacity(0.1):Colors.purple.shade900.withOpacity(1),
                          Provider.of<DessertProvider>(context,listen: false).tableData[it].item[i].orderStatus==false?Colors.white.withOpacity(0.1):Colors.purple.shade900.withOpacity(1),
                        ]
                    ),

                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),



                  ),

                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: ClipRRect(

                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                    child: BackdropFilter(
                        child: Container(

                        ),
                        filter: ImageFilter.blur(sigmaX: 50,sigmaY: 50)

                    ),
                  ),
                ),

                Container(
                  width: double.infinity,


                  padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(width: 1,
                        color: Colors.white.withOpacity(0.5)),



                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),



                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [



                      AutoSizeText(Provider.of<DessertProvider>(context,listen: false).items[i].itemName,
                        maxLines: 2,

                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 20
                        ),),

                      Text('${Provider.of<DessertProvider>(context,listen: false).items[i].itemPrice.toString()}\$',style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 20
                      ),)

                    ],
                  ),
                ),

              ],
            ),
          )),
    );
  }
}
