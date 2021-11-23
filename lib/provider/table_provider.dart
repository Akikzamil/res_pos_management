import 'package:flutter/cupertino.dart';

import 'package:res_pos_management/model/items.dart';
import 'package:res_pos_management/model/tableData.dart';
import 'package:res_pos_management/provider/start_provider.dart';


class TableProviderStart extends ChangeNotifier{
  StartProvider startProvider = StartProvider();
  List<TableData> tableData = [
    TableData(tableNum: 1, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'Soup',
        itemPrice: 20,

        itemQuantity: 1),
      Items(itemName: 'French Fry',
          itemPrice: 5,

          itemQuantity: 1),
      Items(itemName: 'Bread',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Pizza',
          itemPrice: 30,

          itemQuantity: 1),]),
    TableData(tableNum: 2, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'Soup',
        itemPrice: 20,

        itemQuantity: 1),
      Items(itemName: 'French Fry',
          itemPrice: 5,

          itemQuantity: 1),
      Items(itemName: 'Bread',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Pizza',
          itemPrice: 30,

          itemQuantity: 1),]),
    TableData(tableNum: 3, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'Soup',
        itemPrice: 20,

        itemQuantity: 1),
      Items(itemName: 'French Fry',
          itemPrice: 5,

          itemQuantity: 1),
      Items(itemName: 'Bread',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Pizza',
          itemPrice: 30,

          itemQuantity: 1),]),
    TableData(tableNum: 4, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'Soup',
        itemPrice: 20,

        itemQuantity: 1),
      Items(itemName: 'French Fry',
          itemPrice: 5,

          itemQuantity: 1),
      Items(itemName: 'Bread',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Pizza',
          itemPrice: 30,

          itemQuantity: 1),]),
    TableData(tableNum: 5, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'Soup',
        itemPrice: 20,

        itemQuantity: 1),
      Items(itemName: 'French Fry',
          itemPrice: 5,

          itemQuantity: 1),
      Items(itemName: 'Bread',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Pizza',
          itemPrice: 30,

          itemQuantity: 1),]),
    TableData(tableNum: 6, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'Soup',
        itemPrice: 20,

        itemQuantity: 1),
      Items(itemName: 'French Fry',
          itemPrice: 5,

          itemQuantity: 1),
      Items(itemName: 'Bread',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Pizza',
          itemPrice: 30,

          itemQuantity: 1),]),
    TableData(tableNum: 7, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'Soup',
        itemPrice: 20,

        itemQuantity: 1),
      Items(itemName: 'French Fry',
          itemPrice: 5,

          itemQuantity: 1),
      Items(itemName: 'Bread',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Pizza',
          itemPrice: 30,

          itemQuantity: 1),]),
    TableData(tableNum: 8, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'Soup',
        itemPrice: 20,

        itemQuantity: 1),
      Items(itemName: 'French Fry',
          itemPrice: 5,

          itemQuantity: 1),
      Items(itemName: 'Bread',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Pizza',
          itemPrice: 30,

          itemQuantity: 1),]),
    TableData(tableNum: 9, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'Soup',
        itemPrice: 20,

        itemQuantity: 1),
      Items(itemName: 'French Fry',
          itemPrice: 5,

          itemQuantity: 1),
      Items(itemName: 'Bread',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Pizza',
          itemPrice: 30,

          itemQuantity: 1),]),
    TableData(tableNum: 10, status: false,servingStatus: 'Null', item: <Items>[Items(itemName: 'Soup',
        itemPrice: 20,

        itemQuantity: 1),
      Items(itemName: 'French Fry',
          itemPrice: 5,

          itemQuantity: 1),
      Items(itemName: 'Bread',
          itemPrice: 2,

          itemQuantity: 1),
      Items(itemName: 'Pizza',
          itemPrice: 30,

          itemQuantity: 1),]),
  ];




}