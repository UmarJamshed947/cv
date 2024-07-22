import 'package:flutter/cupertino.dart';

class TabDataProvider with ChangeNotifier{
  String _tab = 'none';

  String get tabData => _tab;

  void changeTabDat (String newData) {
    _tab = newData;
    notifyListeners();
  }
}

