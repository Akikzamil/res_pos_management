import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class TrueFalse extends ChangeNotifier{


  List<bool> list =[false,false,false,false];



  truee(int i){
    list[i] = true;
  }
  falsee(int i){
    list[i] = false;
  }

}