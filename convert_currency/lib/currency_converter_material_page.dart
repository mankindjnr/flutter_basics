import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // create functions here - nothing complicated
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(35),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '0',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              // container or padding
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter amount in USD',
                    hintStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.attach_money),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  
                ),
              ),
              // buttons - (raised/appears like txt) or (flat/appears like icon)
              TextButton(onPressed: () {
                // ignore: avoid_print
                print('Convert to Kshs');
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                  minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50)),
                  padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 35,
                  )
                ),
              
              ),
              child: const Text('CONVERT')),

            ],
          ),
        ),
      );
  }
}