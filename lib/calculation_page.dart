import 'package:flutter/material.dart';

class CalculationPage extends StatefulWidget {
  const CalculationPage({super.key, required String title});

  @override
  State<CalculationPage> createState() => _CalculationPage();
}

class _CalculationPage extends State<CalculationPage> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Calculation'),
      ),
      body: Container(
        color: Colors.indigoAccent.shade100,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: no1Controller,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: no2Controller,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var sum = no1 + no2;
                      result = "The Sum Of $no1 and $no2 is $sum";
                      setState(() {});
                    },
                    child: Text('+'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var diff = no1 - no2;

                      result = "The differance between $no1 and $no2 is  $diff";
                      setState(() {});
                    },
                    child: Text('-'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var multi = no1 * no2;

                      result = "The Multiply between $no1 and $no2 is  $multi";
                      setState(() {});
                    },
                    child: Text('*'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var div = no1 / no2;

                      result = "The Division between $no1 and $no2 is  $div";
                      setState(() {});
                    },
                    child: Text('/'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(21),
                child: Text(
                  result,
                  style: const TextStyle(fontSize: 25, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
