import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:res_pos_management/provider/provider.dart';

class ListOfItams extends StatefulWidget {
  int i;


  ListOfItams(this.i);

  @override
  _ListOfItamsState createState() => _ListOfItamsState(i);
}

class _ListOfItamsState extends State<ListOfItams> {

  int it;


  _ListOfItamsState(this.it);

  @override
  Widget build(BuildContext context) {

    AnimationController controller;


    totalPrice(){
      double totalPrice = 0;

      for(int i =0;i<Provider.of<Providers>(context).tableData[it].item.length;i++){
       totalPrice = totalPrice+Provider.of<Providers>(context).tableData[it].item[i].itemPrice*Provider.of<Providers>(context).tableData[it].item[i].itemQuantity;

      }
      return totalPrice;
    }







    return SafeArea(
      child: Stack(children: [
        ClipRRect(

          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 15,sigmaX: 15),
            child: Container(
              height: MediaQuery.of(context).size.height*1,
              width: MediaQuery.of(context).size.width*1,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),



                )
            ),
          ),
        ),
        Container(
        padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width*0.05,
            left: MediaQuery.of(context).size.width*0.05

        ),


        child: Column(


          children: [


            Container(

              height:MediaQuery.of(context).size.height*0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  IconButton(


                      onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close_outlined,
                  size: 45,
                    color: Colors.white,

                  ))

              ],),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,


              children: [
                Text('Table - ${Provider.of<Providers>(context).tableData[it].tableNum.toString()}',style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 30
                ),),
                AutoSizeText(

                  '${totalPrice().toString()}\$',
                  maxLines: 1,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 30
                ),),

              ],
            ),
            Row(
                children: [Expanded(child: Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                ),]
            ),
            Container(
              child: RawScrollbar(
                thickness: 4,
                radius: Radius.circular(5),
                thumbColor: Colors.white.withOpacity(0.2),

                child: ListView.builder(
                    itemCount: Provider.of<Providers>(context).tableData[it].item.length,

                    // itemCount: Provider.of<Providers>(context).tableData[it].item?.length,


                    itemBuilder: (context,i){





                      return   Container(
                          margin: EdgeInsets.symmetric(vertical: 3),
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                            border: Border.all(color: Colors.white,

                            ),

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.purple.shade700.withOpacity(0.8),

                                  Colors.purple.shade700.withOpacity(0.6),
                                  Colors.purple.shade700.withOpacity(0.8),

                                ]
                            ),




                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    AutoSizeText(

                                      Provider.of<Providers>(context).tableData[it].item[i].itemName,
                                      maxLines: 2,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.lato(color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300
                                      ),),
                                    AutoSizeText('${Provider.of<Providers>(context).tableData[it].item[i].itemPrice.toString()}\$',
                                      maxLines: 1,

                                      style: GoogleFonts.lato(color: Colors.white,
                                        fontSize: 20,

                                        fontWeight: FontWeight.w300
                                    ),)

                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(

                                  children: [
                                    Text('Qty',
                                      style: GoogleFonts.lato(color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300
                                      ),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        RawMaterialButton(
                                          onPressed: () {
                                            setState(() {
                                              if(Provider.of<Providers>(context,listen: false).tableData[it].item[i].itemQuantity != 0){
                                                Provider.of<Providers>(context,listen: false).itemQuantityRemove(it, i);
                                              }


                                            });

                                          },
                                          elevation: 2.0,
                                          fillColor: Colors.white,
                                          child: Icon(
                                            Icons.remove,
                                            size: 20,
                                            color: Colors.purple.shade700,
                                          ),
                                          padding: EdgeInsets.all(5),
                                          shape: CircleBorder(),
                                        ),


                                        AutoSizeText(

                                          Provider.of<Providers>(context,listen: false).tableData[it].item[i].itemQuantity.toString(),

                                          maxLines: 1,
                                          style: GoogleFonts.lato(

                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300
                                        ),),

                                        RawMaterialButton(
                                          onPressed: () {
                                            setState(() {
                                              Provider.of<Providers>(context,listen: false).itemQuantityAdd(it, i);

                                            });

                                          },
                                          elevation: 2.0,
                                          fillColor: Colors.white,
                                          child: Icon(
                                            Icons.add,
                                            size: 20,
                                            color: Colors.purple.shade700,
                                          ),
                                          padding: EdgeInsets.all(5),
                                          shape: CircleBorder(),
                                        ),

                                      ],
                                    )


                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('Price',
                                      style: GoogleFonts.lato(color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300
                                      ),),
                                    AutoSizeText('${Provider.of<Providers>(context).tableData[it].item[i].itemQuantity*Provider.of<Providers>(context).tableData[it].item[i].itemPrice}\$',

                                      maxLines: 1,
                                      style: GoogleFonts.lato(color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300
                                    ),)

                                  ],
                                ),
                              ),
                            ],
                          )

                      );}



                ),
              ),
              height: MediaQuery.of(context).size.height*0.6,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.015,
            ),
            AnimatedButton(
              animationDuration: Duration(seconds: 1),





              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*0.7,
              text: 'Confirm Order',
              isReverse: true,
              selectedTextColor: Colors.white,
              transitionType: TransitionType.LEFT_TO_RIGHT,
              textStyle: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w400
              ),
              backgroundColor: Colors.transparent,
              selectedGradientColor: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.purple.shade700,
                    Colors.purple.shade700.withOpacity(0.5),
                    Colors.purple.shade700.withOpacity(0),
                  ]
              ),
              borderColor: Colors.white,
              borderRadius: 50,
              borderWidth: 1,
              onPress: () {


                Provider.of<Providers>(context,listen: false).order(it);

                bool popupIsActive = true;

                Future.delayed(Duration(seconds: 1), () {
                  if (popupIsActive) Navigator.of(context).pop();
                });




              },
            ),


          ],
        ),

        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
        decoration: BoxDecoration(
            color: Colors.transparent,



        ),
      ),



      ],),
    );
  }
}
