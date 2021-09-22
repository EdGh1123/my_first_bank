import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_first_bank/constants/color_constants.dart';
import 'package:my_first_bank/pages/welcome/components/backgorund.dart';
import 'package:my_first_bank/widgets/button_app.dart';



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background( 
      child: SingleChildScrollView(
        child: SafeArea(child: 
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          
            SizedBox(
              height: size.height * 0.06,
            ),
            SvgPicture.asset('assets/icons/svgWelcome.svg'),
            SizedBox(
              height: size.height * 0.04,
            ),
            Container( 
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Text(
                    'Bienvenido a \nMy First Bank',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                      color: kThirdColor,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    'Consulta tu Saldo, visualiza tus cuentas \n tanto corrientes como ahorros, y realiza transferencias.',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      color: Color.fromRGBO(102, 102, 102, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]
            )
              
            ),
            SizedBox(
              height: size.height * 0.035,
            ),
            buttonLogin(context),
            buttonCloseApp(),
            SizedBox(
              height: 26,
            ),
          ],
          ),
        )
      )
    ); 
  }

  Widget buttonLogin(context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0,),
      child: ButtonApp(text: 'Empezar', icono: Icons.arrow_forward ,color: kThirdColor, onPressed: (){
        Navigator.pushNamed(context, 'login' );
      }, )
    );
  }

  Widget buttonCloseApp() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: ButtonApp(text: 'Cerrar aplicación', color: Color.fromRGBO(175, 175, 175, 1), onPressed: (){
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      }, )
    );
  }

}
