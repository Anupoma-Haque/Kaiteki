
import 'package:kaiteki/register.dart';
import 'package:flutter/material.dart';
import 'package:kaiteki/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const MyLogin(),
      //'register' : (context)=> MyRegister(),
    },
  ));
}
