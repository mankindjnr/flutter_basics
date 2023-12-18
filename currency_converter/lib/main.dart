import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';
void main(){
  // ignore: prefer_const_constructors
  runApp(const MyApp());
}

// MaterialApp or CupertinoApp
// creating our own widget
class MyApp extends StatelessWidget {
   const MyApp({super.key}); //const MyApp({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context){
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CurrencyConverterMaterialPage(),
    );
  }
}