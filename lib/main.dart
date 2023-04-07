import 'package:bank/screens/home.dart';
import 'package:bank/themes/my_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bank());
}

class Bank extends StatelessWidget {
const Bank({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Bank',
      theme: MyTheme,
      home: Home(),
    );
  }
}
