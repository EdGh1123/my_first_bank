import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

//import 'package:login_claro/constants.dart';

//import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_first_bank/constants/color_constants.dart';
import 'package:my_first_bank/controllers/login/login_controller.dart';
import 'package:my_first_bank/pages/login/components/background.dart';
import 'package:my_first_bank/widgets/button_app.dart';
import 'package:my_first_bank/widgets/rounded_input_field.dart';
import 'package:my_first_bank/widgets/rounded_password_field.dart';




class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {


  LoginController _con=new LoginController();
      @override
void initState() { 
  super.initState();
  
  SchedulerBinding.instance?.addPostFrameCallback((timeStamp) { 
   _con.init(context);
   
  });
  
}

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return Scaffold(
    key: _con.key,
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
                      'Iniciar sesión',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                        color: kThirdColor,
                        height: 1.2,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'Ingresa los datos que han sido registrados y validados.',
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
                  con: _con.emailController,
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  con: _con.passwordController,
                  onChanged: (value) {},
                  hintText: 'Contraseña',
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
                    
                
                  ],
                ),
              ]),
            ),
          ],
        ),
      ))),
    );
  }

  Widget buttonLogin(context) {
    return Container(
        child: ButtonApp(
      text: 'Ingresar',
      icono: Icons.arrow_forward,
      color: kThirdColor,
      onPressed: () {
        
      showDialog(context: context, builder: (BuildContext context){ 

        return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0)
              ),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 210,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 60, 10, 10),
                      child: Column(
                        children: [
                          Text('Hola, Mi nombre es Eduardo', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: kThirdColor),),
                          SizedBox(height: 6,),
                            Text('¡Gracias por probar mi aplicacion de prueba de habilidad en el desarrollo hibrido con flutter!', textAlign: TextAlign.center, style: TextStyle(fontSize: 14),),
                          SizedBox(height: 3,),
                          ElevatedButton(onPressed: () {
                            _con.login();
                          },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(kThirdColor)
                            ),
                            child: Text('Aceptar', style: TextStyle(color: Colors.white),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -50,
                    child: CircleAvatar(
                      backgroundColor: kThirdColor,
                      radius: 50,
                      child: Icon(Icons.notification_important, color: Colors.white, size: 40,),
                    )
                  ),
                ],
              )
            );
        });
      },
    ));
  }
}
