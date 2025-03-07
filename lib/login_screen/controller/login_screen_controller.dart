import 'package:flutter/material.dart';
import 'package:shield_gpt/login_screen/model/login_screen_model.dart';
import 'package:shield_gpt/login_screen/model/login_validate_model.dart';

class LoginScreenController extends ChangeNotifier {
  // NOTE - User model state
  LoginScreenModel userData = LoginScreenModel();

  // SECTION - User Data Setters
  void setUserName(String userName) {
    userData.userName = userName;
    notifyListeners();
  }

  void setPassword(String password) {
    userData.password = password;
    notifyListeners();
  }

  void setUserDate(LoginScreenModel userTempData) {
    userData = userTempData;
    notifyListeners();
  }
  //!SECTION

  // SECTION Getter
  String getUserName() => userData.userName;
  String getUsePassword() => userData.userName;
  //!SECTION

  // SECTION Validator
  // NOTE username validation
  LoginValidateModel isValidUserName(String userName) {
    LoginValidateModel validateModel = LoginValidateModel();
    if (userName.isEmpty) {
      validateModel.isValid = false;
      validateModel.statusMsg = 'The username cannot be empty';
    } else {
      validateModel.isValid = true;
      validateModel.statusMsg = 'The username is valid';
    }
    return validateModel;
  }

  // NOTE password validation
  LoginValidateModel isValidPassword(String password) {
    LoginValidateModel validateModel = LoginValidateModel();
    if (password.isEmpty) {
      validateModel.isValid = false;
      validateModel.statusMsg = 'The password cannot be empty';
    } else {
      validateModel.isValid = true;
      validateModel.statusMsg = 'The password is valid';
    }
    return validateModel;
  }
  //!SECTION
}
