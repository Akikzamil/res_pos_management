import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:res_pos_management/model/listttttt.dart';

class OrderScreen extends StatefulWidget {

  List<Listt> list;
  int tableNum;
  bool orderss;
  bool status;


  OrderScreen(this.list,this.tableNum,this.orderss,this.status);

  @override
  _OrderScreenState createState() => _OrderScreenState(list,tableNum,orderss,status);
}

class _OrderScreenState extends State<OrderScreen> {

  List<Listt> list;
  int tableNum;
  bool orderss;
  bool status;



  _OrderScreenState(this.list,this.tableNum,this.orderss,this.status);

  bool orderStatus(){
    return status = false;
  }


  String amount(int itpri){
    int i = 2*itpri;
    return i.toString();
  }


  double? summ(){
    double sum = 0;

    for(int i = 0;i<list.length;i++){
      sum =sum + list[i].itemPrice*list[i].qty;

    }
    return sum;

  }

  double vat(){
   double?  sum = summ();
   double vat = sum! * 5/100;

   return vat;

  }

  double totalSum(){
    double? sum = summ();
    double? vatt = vat();
    return sum!+vatt;
  }



  @override
  Widget build(BuildContext context) {



    return Container(


      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff09203F),
              Color(0xff537895)
            ],



          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        appBar: AppBar(

          shadowColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          elevation: 0,


          backgroundColor:Colors.blue.withOpacity(0.2) ,
          title: Text(
            'Table - ${tableNum.toString()}',
            style: GoogleFonts.lato(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w400

            ),



          ),
          shape: RoundedRectangleBorder(



              borderRadius: BorderRadius.vertical(



                  bottom: Radius.circular(30)
              )
          ),
        ),

        body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: 20,
            vertical: 20
          ),

          child: Column(
            children: [
              Expanded(
                  flex: 5,

                  child: Container(
                    
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: list.length,
                  itemBuilder: (context,i)=>Container(

                    margin: EdgeInsets.symmetric(vertical: 15),
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      children: [
                        Expanded(child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(list[i].picture,fit: BoxFit.cover,),

                        )),
                        Expanded(child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(list[i].itemName,style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w300
                            ),),
                            SizedBox(height: 5,),
                            Text('${list[i].itemPrice}\$',style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w300
                            ),),
                          ],
                        )),
                        Expanded(child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Qty',style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w300
                            ),),
                            SizedBox(height: 5,),
                            Text(list[i].qty.toString(),style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w300
                            ),),
                          ],
                        )),
                        Expanded(child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                  'Amount',style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w300
                            ),),
                            SizedBox(height: 5,),
                            Text(amount(list[i].itemPrice),style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w300
                            ),),
                          ],
                        )),

                      ],

                    ),
                  ),


                    ),

              )),
              Expanded(
                  flex: 2,
                  child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 32,
                            child: Text('Total',style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w300,

                            ),
                              textAlign: TextAlign.center,

                            )),
                        Expanded(
                            flex: 1,
                            child: Text(':',style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w300
                            ),
                              textAlign: TextAlign.center,

                            )),
                        Expanded(
                            flex: 32,
                            child: Text('${summ().toString()}\$',style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w300
                            ),
                              textAlign: TextAlign.center,

                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 32,
                            child: Text('Vat(5%)',style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w300,

                            ),
                              textAlign: TextAlign.center,

                            )),
                        Expanded(
                            flex: 1,
                            child: Text(':',style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w300
                            ),
                              textAlign: TextAlign.center,

                            )),
                        Expanded(
                            flex: 32,
                            child: Text('${vat().toString()}\$',style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w300
                            ),
                              textAlign: TextAlign.center,

                            )),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [Expanded(child: Divider(
                        height: 2,

                        color: Colors.white,
                      )),]
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 32,
                            child: Text('Sum',style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w300,

                            ),
                              textAlign: TextAlign.center,

                            )),
                        Expanded(
                            flex: 1,
                            child: Text(':',style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w300
                            ),
                              textAlign: TextAlign.center,

                            )),

                        Expanded(
                            flex: 32,
                            child: Text('${totalSum().toString()}\$',style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w300
                            ),
                              textAlign: TextAlign.center,

                            )),
                      ],
                    ),
                  ],
                ),
              )),
              Expanded(

                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    width: double.infinity,
                    child: OutlineButton(

                      borderSide: BorderSide(
                        color: Colors.white
                      ),

                      onPressed: () {
                        orderStatus();
                        print(status);

                      },
                      child: Text('Cooked',style: GoogleFonts.lato(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w400


                      ),),

                    ),
                  )),

            ],
          ),
        ),

      ),
    );
  }
}
