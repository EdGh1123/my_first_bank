import 'package:flutter/material.dart';

class DropdwntextAdmin extends StatefulWidget {
  final String valorObtenido;
  String valor;

  DropdwntextAdmin({
     required this.valorObtenido, required this.valor,
    //@required this.valorObtenido,
  });

  @override
  _DropdwntextAdminState createState() => _DropdwntextAdminState();
}
class Estatica{
  static String miValor="";
}


class _DropdwntextAdminState extends State<DropdwntextAdmin> {
  

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: widget.valor,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.red),
      underline: Container(
        height: 3,
        color: Colors.red,
      ),
      onChanged: (String? newValue) {
        setState(() {
          
          widget.valor = newValue!;

          //aqui realizas el guardado del item seleccionado en la variable estatica
          Estatica.miValor=newValue;
          
        });
      },
      items: <String>[
        'admin',
        'default',
        'especialista'
        
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
  
}