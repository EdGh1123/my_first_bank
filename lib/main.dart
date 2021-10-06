import 'package:flutter/material.dart';
import 'package:my_first_bank/pages/login/login_page.dart';
import 'package:my_first_bank/screens/base_scren.dart';
import 'package:my_first_bank/screens/weather_screen.dart';

import 'constants.dart';
import 'pages/inapp/qr-page.dart';
import 'pages/welcome/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TargetHome',
        initialRoute: 'WelcomeScreen',
        routes: {
          'WelcomeScreen': (BuildContext context) => WelcomeScreen(),
          'login': (BuildContext context) => LoginPage(),
          'qr': (BuildContext context) => QRViewExample(),
          'home1': (BuildContext context) => BaseScreen(),
          'weather': (BuildContext context) => WeatherScreen(),
        },
       theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Poppins",
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        primarySwatch: Colors.blue,
      ),
      ),
    );
  }
}
