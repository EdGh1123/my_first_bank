
import 'package:flutter/material.dart';


class MenuLateral extends StatefulWidget {
  MenuLateral({Key? key}) : super(key: key);

  @override
  _MenuLateralState createState() => _MenuLateralState();
}



class _MenuLateralState extends State<MenuLateral> {
  


@override
void initState() { 
  super.initState();
 
  
}
  void refresh() {
    setState(() {});
  }


  

  @override
  Widget build(BuildContext context) {

    
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text('Jane'),
              accountEmail: Text('Do'),
              currentAccountPicture: Image.asset('assets/img/user.png'),
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Configuración'),
            onTap: () {
              
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Cerrar sesión'),
            onTap: () {
            
            },
          ),
        ],
      ),
    );
  }

 

   

  

}