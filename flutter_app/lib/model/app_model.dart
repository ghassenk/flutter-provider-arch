import 'package:flutter/foundation.dart';

class AppModel extends ChangeNotifier {
  
  //region App Attributes & Methods
  final String title = 'Flutter Demo';
  bool loggedIn = false;

  void onLogInStateChanged(bool value) {
    loggedIn = value;
    notifyListeners();
  }

  //endregion

}
