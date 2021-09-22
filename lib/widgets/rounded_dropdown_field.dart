import 'package:flutter/material.dart';
import 'package:my_first_bank/widgets/text_field_container.dart';


//import 'package:login_claro/constants.dart';

class RoundedDropdownField extends StatefulWidget {
  final String valorObtenido;

  RoundedDropdownField({
     required this.valorObtenido,
    //@required this.valorObtenido,
  });

  @override
  _RoundedDropdownFieldState createState() => _RoundedDropdownFieldState();
}
class Estatica{
  static String miValor="";
}


class _RoundedDropdownFieldState extends State<RoundedDropdownField> {
  String? dropdownValor = 'Ejecutivo';

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child:
        DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: dropdownValor,
            icon: Icon(Icons.expand_more_outlined),
            elevation: 16,
            onChanged: (String? newValue) {
              setState(() {

                dropdownValor = newValue!;

                //aqui realizas el guardado del item seleccionado en la variable estatica
                Estatica.miValor=newValue;

              });
            },
            items: <String>[
              'Ejecutivo',
              'Especialista',
              'Asesor'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, style: TextStyle(fontSize: 14),),
              );
            }).toList(),
          )
        )
    ); 
  }
}
