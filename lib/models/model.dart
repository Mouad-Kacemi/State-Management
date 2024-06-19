import 'package:flutter/material.dart';

class CounterModel with ChangeNotifier {
  int counter = 0;
  void decrement() {
    counter--;
    notifyListeners();
  }

  void increment() {
    counter++;
    notifyListeners();
  }
}
