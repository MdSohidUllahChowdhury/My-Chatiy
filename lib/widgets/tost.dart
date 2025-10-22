import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TostMessage{
  void wrongMessage(String message){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb:5,
        backgroundColor: Colors.redAccent,
        textColor: Colors.white,
        fontSize: 16.0
      
    );
  }
 void rightMessage(String message){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb:5,
        backgroundColor: Colors.greenAccent,
        textColor: Colors.black,
        fontSize: 16.0
      
    );
  }
}