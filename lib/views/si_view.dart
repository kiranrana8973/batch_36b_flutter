import 'package:flutter/material.dart';

class SiView extends StatefulWidget {
  const SiView({super.key});

  @override
  State<SiView> createState() => _SiViewState();
}

class _SiViewState extends State<SiView> {
  late double p;
  late double r;
  late double t;
  late double result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SI")),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              p = double.tryParse(value) ?? 0;
            },
          ),
          TextField(),
          TextField(),
          ElevatedButton(onPressed: () {}, child: Text("Calcyaklte")),
          Text("Result : "),
        ],
      ),
    );
  }
}
