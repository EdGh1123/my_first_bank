import 'dart:async';


import 'package:flutter/material.dart';

import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';



import 'package:my_first_bank/utils/snackbar.dart' as utils;

class LoginController {
  GlobalKey<ScaffoldState> key = new GlobalKey<ScaffoldState>();

  BuildContext? context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  SimpleFontelicoProgressDialog? _progressDialog;



  Future? init(BuildContext context) {
    this.context = context;

  }




  void login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    print('email $email');
    print('contra $password');

if (email == ''||email=="".trim()) {
        utils.Snackbar.showSnackbar(context!, key, 'Email Requerido');
        return;
      }else{Navigator.pushNamedAndRemoveUntil(
              context!, 'home1', (route) => false);}
    if (password == ''||password=="".trim())
      
    {utils.Snackbar.showSnackbar(context!, key, 'contraseña requerida');
    return;}
    
  }
}
