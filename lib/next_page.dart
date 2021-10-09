import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String text = "テキスト";
  bool flag = false;

  void changeText(){
    if(flag = false){
      text = "テキストが変わりました";
      flag = true;
    }else{
      text = "テキスト";
      flag = false;
    }
    notifyListeners();
  }
}