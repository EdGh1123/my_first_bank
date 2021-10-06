import 'package:flutter/material.dart';
import 'package:my_first_bank/constants/color_constants.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Clima",
          style: TextStyle(
            fontFamily: "Poppins",
            color: kPrimaryColor,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
                NetworkImage("https://placeimg.com/640/480/people"),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
                size: 27,
              ),
              onPressed: () {})
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(24),
                height: 142,
                width: 350,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/img/weather.png'),
                          SizedBox(height: 2),
                          Text(
                            "Nublado",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(250, 250, 250, 1)),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "27°",
                            style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(196, 196, 196, 1)),
                          ),
                          Text(
                            "Humedad 86%",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(196, 196, 196, 1)),
                          ),
                          SizedBox(height: 12),
                          Text(
                            "Barranquilla, Atlántico",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(250, 250, 250, 1)),
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              "Sucursales cercanas",
              style: TextStyle(
                  fontSize: 20,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15,
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: kThirdColor,
                  ),
                  title: Text('Ciudadela 20 de Julio'),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: kPrimaryColor, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  height: 15,
                ),
                ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: kThirdColor,
                  ),
                  title: Text('Exito metropolitano'),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: kPrimaryColor, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
