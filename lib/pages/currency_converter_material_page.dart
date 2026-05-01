import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(60),
      borderSide: BorderSide(
        color: Colors.white54,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
    );
    return Scaffold(
      appBar: AppBar(title: const Text("Currency Converter Material Page")),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "0",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Please enter an amount in USD",
                  hintStyle: TextStyle(color: Colors.white54),
                  prefixIcon: Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.white54,
                  ),
                  filled: true,
                  fillColor: Colors.white12,
                  enabledBorder: border,
                  focusedBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            TextButton(onPressed: () {}, child: Text("Convert")),
          ],
        ),
      ),
    );
  }
}
