import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_app/model/app_model.dart';

class LoginModel extends ChangeNotifier {
  bool isLoading = false;
  bool isLoggedIn = false;

  void login(AppModel appModel, String user, String pwd) {
    isLoading = true;
    notifyListeners();

    bool result = _checkCredentials(user, pwd);
    if (result != isLoggedIn) {
      isLoggedIn = result;
      appModel.onLogInStateChanged(isLoggedIn);
    }
  }

  bool _checkCredentials(String user, String pwd) {
    sleep(Duration(seconds: 1));
    return true;
  }

}
