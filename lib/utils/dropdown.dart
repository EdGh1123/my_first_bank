import 'package:flutter/material.dart';

class Dropdwntext extends StatefulWidget {
  final String valorObtenido;

  Dropdwntext({
     required this.valorObtenido,
    //@required this.valorObtenido,
  });

  @override
  _DropdwntextState createState() => _DropdwntextState();
}
class Estatica{
  static String miValor="";
}


class _DropdwntextState extends State<Dropdwntext> {
  String? dropdownValor = 'Ejecutivo';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValor,
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
          
          dropdownValor = newValue!;

          //aqui realizas el guardado del item seleccionado en la variable estatica
          Estatica.miValor=newValue;
          
        });
      },
      items: <String>[
        'Ejecutivo',
        'Analista',
        'Especialista',
        'Asesor'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
  
}