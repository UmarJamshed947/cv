import 'package:flutter/material.dart';

class TabDataProvider with ChangeNotifier {
  String _tab = "none";

  void changeTabData(String newData){
    _tab=newData;
    notifyListeners();
  }
}