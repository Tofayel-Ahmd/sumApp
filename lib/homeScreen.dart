import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _NumberOneTEController = TextEditingController();
  final TextEditingController _NumberTwoTEController = TextEditingController();
  double _result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(
            child: Text(
          "Sum App",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 22,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _NumberOneTEController,
              decoration: InputDecoration(
                  labelText: "Input Number One",
                  hintText: 'Enter your First Number',
                  prefixIcon: const Icon(Icons.add),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(81),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  )),
            ),
            const SizedBox(
              height: 22,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _NumberTwoTEController,
              decoration: InputDecoration(
                labelText: "Input Number Two",
                hintText: 'Enter your Second Number',
                prefixIcon: const Icon(Icons.add),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(81),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Text(
              'Result:$_result',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        double numOne = double.tryParse(
                                _NumberOneTEController.text.trim()) ??
                            0;
                        double numTwo = double.tryParse(
                                _NumberTwoTEController.text.trim()) ??
                            0;
                        double result = add(numOne, numTwo);
                        _result = result;
                        setState(() {});
                      },
                      child: const Text("Add")),
                ),
                const SizedBox(
                  width: 22,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        double numOne = double.tryParse(
                                _NumberOneTEController.text.trim()) ??
                            0;
                        double numTwo = double.tryParse(
                                _NumberTwoTEController.text.trim()) ??
                            0;
                        double result = sub(numOne, numTwo);
                        _result = result;
                        setState(() {});
                      },
                      child: const Text("Sub")),
                ),
                const SizedBox(
                  width: 22,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        clear();
                      },
                      child: const Text("Clear")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void clear() {
    _NumberOneTEController.clear();
    _NumberTwoTEController.clear();
    _result = 0;
    setState(() {});
  }

  double add(double numOne, double numTwo) {
    return numOne + numTwo;
  }

  double sub(double numOne, double numTwo) {
    return numOne - numTwo;
  }
}
