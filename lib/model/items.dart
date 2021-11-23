import 'package:flutter/cupertino.dart';

class Items{
  String itemName;
  double itemPrice;

  int itemQuantity;
  bool orderStatus;


  Items({required this.itemName,required this.itemPrice,required this.itemQuantity,this.orderStatus =false});
}