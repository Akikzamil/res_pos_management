import 'package:flutter/cupertino.dart';
import 'package:res_pos_management/model/items.dart';
import 'package:res_pos_management/model/tableData.dart';

class BeverageProvider extends ChangeNotifier{

  List<TableData> tableData = [
    TableData(tableNum: 1, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'water',
        itemPrice: 1,

        itemQuantity: 1),
      Items(itemName: 'Coca Cola',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Coffee',
          itemPrice: 3,

          itemQuantity: 1),

    ]),
    TableData(tableNum: 2, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'water',
        itemPrice: 1,

        itemQuantity: 1),
      Items(itemName: 'Coca Cola',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Coffee',
          itemPrice: 3,

          itemQuantity: 1),

    ]),
    TableData(tableNum: 3, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'water',
        itemPrice: 1,

        itemQuantity: 1),
      Items(itemName: 'Coca Cola',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Coffee',
          itemPrice: 3,

          itemQuantity: 1),

    ]),
    TableData(tableNum: 4, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'water',
        itemPrice: 1,

        itemQuantity: 1),
      Items(itemName: 'Coca Cola',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Coffee',
          itemPrice: 3,

          itemQuantity: 1),

    ]),
    TableData(tableNum: 5, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'water',
        itemPrice: 1,

        itemQuantity: 1),
      Items(itemName: 'Coca Cola',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Coffee',
          itemPrice: 3,

          itemQuantity: 1),

    ]),
    TableData(tableNum: 6, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'water',
        itemPrice: 1,

        itemQuantity: 1),
      Items(itemName: 'Coca Cola',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Coffee',
          itemPrice: 3,

          itemQuantity: 1),

    ]),
    TableData(tableNum: 7, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'water',
        itemPrice: 1,

        itemQuantity: 1),
      Items(itemName: 'Coca Cola',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Coffee',
          itemPrice: 3,

          itemQuantity: 1),

    ]),
    TableData(tableNum: 8, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'water',
        itemPrice: 1,

        itemQuantity: 1),
      Items(itemName: 'Coca Cola',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Coffee',
          itemPrice: 3,

          itemQuantity: 1),

    ]),
    TableData(tableNum: 9, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'water',
        itemPrice: 1,

        itemQuantity: 1),
      Items(itemName: 'Coca Cola',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Coffee',
          itemPrice: 3,

          itemQuantity: 1),

    ]),
    TableData(tableNum: 10, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'water',
        itemPrice: 1,

        itemQuantity: 1),
      Items(itemName: 'Coca Cola',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Coffee',
          itemPrice: 3,

          itemQuantity: 1),

    ]),
  ];


  List<Items> items =[
    Items(itemName: 'water',
        itemPrice: 1,

        itemQuantity: 1),
    Items(itemName: 'Coca Cola',
        itemPrice: 2,

        itemQuantity: 1),
    Items(itemName: 'Coffee',
        itemPrice: 3,

        itemQuantity: 1),



  ];

  orderStatusFalse(int i,it){

    tableData[it].item[i].orderStatus =false;
    notifyListeners();

  }
  orderStatusTrue(int i,it){
    tableData[it].item[i].orderStatus =true;
    notifyListeners();

  }


}