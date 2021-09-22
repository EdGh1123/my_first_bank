import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:my_first_bank/controllers/login/login_controller.dart';
import 'package:my_first_bank/pages/login/components/body.dart';

//Componentes de login page


class LoginPage extends StatefulWidget {



  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  LoginController _con=new LoginController();
void initState() { 
  super.initState();
  
  SchedulerBinding.instance?.addPostFrameCallback((timeStamp) { 
   _con.init(context);
   
  });
  
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _con.key,
      body: Body()
    );
  }
}


