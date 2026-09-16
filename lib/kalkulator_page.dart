import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();

  String _resultText = "";

  void _calculate(String operator) {
    String input1 = _num1Controller.text;
    String input2 = _num2Controller.text;

    if (input1.isEmpty || input2.isEmpty) {
      setState(() {
        _resultText = "Mohon isi kedua angka!";
      });
      return;
    }

    double? num1 = double.tryParse(input1);
    double? num2 = double.tryParse(input2);

    if (num1 == null || num2 == null) {
      setState(() {
        _resultText = "Input harus berupa angka valid!";
      });
      return;
    }

    double result = 0;

    switch (operator) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '×':
        result = num1 * num2;
        break;
      case '÷':
        if (num2 == 0) {
          setState(() {
            _resultText = "Tidak bisa membagi angka dengan nol (0)";
          });
          return;
        }
        result = num1 / num2;
        break;
    }

    setState(() {
      _resultText = "$num1 $operator $num2 = $result";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator App")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 120,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: TextField(
                      controller: _num1Controller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Angka 1",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: TextField(
                      controller: _num2Controller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Angka 2",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  child: ElevatedButton(
                    onPressed: () => _calculate('+'),
                    child: const Text("+"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: ElevatedButton(
                    onPressed: () => _calculate('-'),
                    child: const Text("-"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: ElevatedButton(
                    onPressed: () => _calculate('×'),
                    child: const Text("×"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: ElevatedButton(
                    onPressed: () => _calculate('÷'),
                    child: const Text("÷"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Hasil:",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              _resultText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}