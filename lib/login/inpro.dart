import 'package:flutter/material.dart';

class Loginprovider extends ChangeNotifier {
  String? email;
  bool isLoding = false;
  bool isPassword = true;
  void ChangePassword(bool value){
    isPassword = value;
    notifyListeners();
  }
  void ChangeLoding(bool value){
    isLoding = value;
    notifyListeners();
  }

  void changeEmail(String value){
    email = value;
    notifyListeners();
  }
}