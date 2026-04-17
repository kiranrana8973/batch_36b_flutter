import 'package:flutter/material.dart';
import 'package:second_app/models/arithmetic_model.dart';
// 1. stateless -> josko state change hunna
// 2. stateful -> jasko state change hunna sakcha

// Singlechild: child
// multichlid:  children:[]

// hot reload

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  int first = 0;
  int second = 0;
  int result = 0;
  late ArithmeticModel arithmeticModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(title: const Text("Arithmetic View")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                first = int.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter first no",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                second = int.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter second no",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Simple state management OR Page lai refresh gara
                  setState(() {
                    arithmeticModel = ArithmeticModel(
                      first: first,
                      second: second,
                    );
                    result = arithmeticModel.add();
                  });
                },
                child: Text("Add"),
              ),
            ),
            SizedBox(height: 8),

            Text("Result : $result", style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
