

import 'package:flutter/material.dart';

import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';
/*import 'package:sn_progress_dialog/sn_progress_dialog.dart';*/



class MyProgressDialog{




  static SimpleFontelicoProgressDialog? createProgresDialog(BuildContext context, String text){

SimpleFontelicoProgressDialog _dialog = SimpleFontelicoProgressDialog(context: context, barrierDimisable:  true);


  _dialog.show(message: text);
return _dialog;
}







  
 /* 
static ProgressDialog createProgresDialog(BuildContext context, String text){

//ProgressModel progressDialog=new ProgressModel();
ProgressDialog progressDialog = new ProgressDialog(context: context,);

progressDialog.show(max: 100, msg: text, 
       /* progressType: ProgressType.valuable,
        backgroundColor: Color(0xff212121),
        progressValueColor: Color(0xff3550B4),
        progressBgColor: Colors.white70,
        msgColor: Colors.white,
        valueColor: Colors.white*/);
return progressDialog;
}
*/
}

