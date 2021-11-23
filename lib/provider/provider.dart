

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:res_pos_management/model/items.dart';
import 'package:res_pos_management/model/tableData.dart';

class Providers extends ChangeNotifier {

  List<TableData> tableData = [
    TableData(tableNum: 1, status: false,servingStatus: 'Null', item: <Items>[]),
    TableData(tableNum: 2, status: false,servingStatus: 'Null', item: <Items>[]),
    TableData(tableNum: 3, status: false,servingStatus: 'Null', item: <Items>[]),
    TableData(tableNum: 4, status: false,servingStatus: 'Null', item: <Items>[]),
    TableData(tableNum: 5, status: false,servingStatus: 'Null', item: <Items>[]),
    TableData(tableNum: 6, status: false,servingStatus: 'Null', item: <Items>[]),
    TableData(tableNum: 7, status: false,servingStatus: 'Null', item: <Items>[]),
    TableData(tableNum: 8, status: false,servingStatus: 'Null', item: <Items>[]),
    TableData(tableNum: 9, status: false,servingStatus: 'Null', item: <Items>[]),
    TableData(tableNum: 10, status: false,servingStatus: 'Null', item: <Items>[]),
  ];

  update(int index, Items items) {
    tableData[index].item.add(items);

    print(tableData);
    notifyListeners();
  }
  remove(int index, Items items) {
    tableData[index].item.remove(items);
    print(tableData);
    notifyListeners();
  }
itemQuantityAdd(int index,int itemq){
   tableData[index].item[itemq].itemQuantity ++ ;


    notifyListeners();
}
  itemQuantityRemove(int index,int itemq){
    tableData[index].item[itemq].itemQuantity -- ;


    notifyListeners();

  }

  resetItemQuantity(int index,int itemq){
    tableData[index].item[itemq].itemQuantity = 0;
    notifyListeners();

  }
  totalPrice(int index,int itemLength){
     for(int i =0;i<itemLength;i++){
      tableData[index].totalPrice = tableData[index].item[i].itemPrice*tableData[index].item[i].itemQuantity +tableData[index].totalPrice ;

      notifyListeners();

}
  }



  removeAll(int tableNum){

    tableData[tableNum].item = [];
    notifyListeners();
  }

  order(int tableNum){
    tableData[tableNum].servingStatus = 'Ordered';
    notifyListeners();
  }

  nul(int tableNum){
    tableData[tableNum].servingStatus = 'Null';
    notifyListeners();
  }
  orderStatusFalse(int i,int it){
    tableData[it].item[i].orderStatus =false;
    notifyListeners();
  }
  orderStatusTrue(int i,int it){
    tableData[it].item[i].orderStatus =true;
    notifyListeners();

  }






}