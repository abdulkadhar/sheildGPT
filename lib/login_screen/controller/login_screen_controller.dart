import 'package:flutter/material.dart';
import 'package:shield_gpt/login_screen/model/login_screen_model.dart';
import 'package:shield_gpt/login_screen/model/login_validate_model.dart';

class LoginScreenController extends ChangeNotifier {
  // NOTE - User model state
  LoginScreenModel userData = LoginScreenModel();

  // NOTE State for the form handling
  String? userNameErrorText;
  String? passwordErrorText;

  // SECTION - User Data Setters
  void setUserName(String? userName) {
    setUserNameErrorText(validateEmail(userName));
    if (userNameErrorText == null) {
      userData.userName = userName!;
    }
    notifyListeners();
  }

  void setPassword(String? password) {
    setPasswordErrorText(validatePassword(password));
    if (passwordErrorText == null) {
      userData.password = password!;
    }
    notifyListeners();
  }

  void setUserDate(LoginScreenModel userTempData) {
    userData = userTempData;
    notifyListeners();
  }

  void setUserNameErrorText(String? errorText) {
    userNameErrorText = errorText;

    notifyListeners();
  }

  void setPasswordErrorText(String? errorText) {
    passwordErrorText = errorText;

    notifyListeners();
  }
  //!SECTION

  // SECTION Getter
  String getUserName() => userData.userName;
  String getUsePassword() => userData.password;
  //!SECTION

  // SECTION Validator
  static String? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  }

  static String? validatePassword(String? value) {
    return (value == null || value.isEmpty) ? 'password cannot be empty' : null;
  }

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
