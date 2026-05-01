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
              padding: const EdgeInsets.all(10.0),
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  foregroundColor: WidgetStatePropertyAll(Colors.black),
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                    ),
                  ),
                ),
                child: Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
