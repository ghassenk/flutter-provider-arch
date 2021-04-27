import 'dart:io';

import 'abstract_model.dart';

class Login extends AbstractModel {
  bool isLoading = false;
  bool isLoggedIn = false;

  void login(String user, String pwd) {
    isLoading = true;
    onUpdate();

    bool result = checkCredentials(user, pwd);
    if (result != isLoggedIn) {
      isLoggedIn = result;
    }

    onUpdate();
  }

  bool checkCredentials(String user, String pwd) {
    sleep(Duration(seconds: 1));
    return true;
  }
}
