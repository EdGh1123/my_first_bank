
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_first_bank/widgets/button_app.dart';
import 'package:my_first_bank/widgets/rounded_input_field.dart';

import '../../../../constants.dart';
import 'background.dart';
//Componentes de login page

import 'package:my_first_bank/utils/snackbar.dart' as utils;
class RcContra extends StatefulWidget {



  @override
  _RcContraState createState() => _RcContraState();
}

class _RcContraState extends State<RcContra> {
 TextEditingController correo = new TextEditingController();
  GlobalKey<ScaffoldState> key = new GlobalKey<ScaffoldState>(); 
void initState() { 
  super.initState();
  
  SchedulerBinding.instance?.addPostFrameCallback((timeStamp) { 

   
  });
  
}
  @override
  Widget build(BuildContext context) {
   
   Size size = MediaQuery.of(context).size;
    
    return Scaffold(
    key: key,
     body: Background(
        
          child: SingleChildScrollView(
              child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: SvgPicture.asset('assets/icons/svgLogin.svg'),
              height: 260.0,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Recuperar Contraseña',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                        color: Color.fromRGBO(229, 31, 31, 1),
                        height: 1.2,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'Ingresa tu correo para recibir el link de cambio de contraseña.',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      color: Color.fromRGBO(102, 102, 102, 1),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ])),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(children: [
                SizedBox(
                  height: size.height * 0.028,
                ),
                RoundedInputField(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Correo',
                  con: correo,
                  onChanged: (value) {},
                ),
               
                SizedBox(
                  height: size.height * 0.03,
                ),
                buttonLogin(context),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      child: Text(
                        'Regresar al Login',
                        style: TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ))),
    );




  }








 void resetPassword(BuildContext context) async {
    if (correo.text.length == 0 || !correo.text.contains("@claro.com.co")) {
    
      utils.Snackbar.showSnackbar(
            context, key, 'Formato de email incorrecto, verifique si es de la empresa.');
      return;
    }




  }

  Widget buttonLogin(context) {
    return Container(
        child: ButtonApp(
      text: 'Recuperar',
      icono: Icons.replay_circle_filled_rounded,
      color: Color.fromRGBO(229, 31, 31, 1),
      onPressed: ()  async {

resetPassword(context);
      
   
   
      },
    ));
  }


}