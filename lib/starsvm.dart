
import 'package:flutter/material.dart';

class StarsVM with ChangeNotifier {
 
  int value = -1;

  void valTransfer(index) {
    value=index;
    notifyListeners();
  }
}