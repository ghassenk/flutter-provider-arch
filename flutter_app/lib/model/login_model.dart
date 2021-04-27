import 'dart:io';

import 'package:flutter/foundation.dart';

class LoginModel extends ChangeNotifier {
  bool isLoading = false;
  bool isLoggedIn = false;

  void login(String user, String pwd) {
    isLoading = true;

    bool result = checkCredentials(user, pwd);
    if (result != isLoggedIn) {
      isLoggedIn = result;
    }
  }

  bool checkCredentials(String user, String pwd) {
    sleep(Duration(seconds: 1));
    return true;
  }
}
