

import 'items.dart';

class TableData {

  int tableNum;

  double totalPrice;

  bool status;
  List<Items> item ;
  String servingStatus;

  TableData({required this.tableNum,required this.status,required this.item,this.totalPrice=0,required this.servingStatus});
}