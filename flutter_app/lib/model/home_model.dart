import 'package:flutter/foundation.dart';

class HomeModel extends ChangeNotifier {
  final String title = 'Flutter Demo Home Page';
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }
}
