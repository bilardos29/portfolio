import 'package:flutter/material.dart';

class MainNewsPresenter extends ChangeNotifier {

  int _bottomMenu = 0;

  int get bottomMenu => _bottomMenu;
  set bottomMenu(int val){
    _bottomMenu = val;
  }
}