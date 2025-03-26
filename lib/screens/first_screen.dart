import 'package:flutter/material.dart';
import 'package:terminus_app/widgets/result_box.dart';
import 'package:terminus_app/widgets/symbols_row.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<int> values = [0, 10, 11, 20, 21, 22];

  int indexX = 0;
  int indexY = 0;
  int indexZ = 0;

  void onSelectIcon(int index, String letter) {
    switch (letter) {
      case 'X':
        setState(() {
          indexX = index;
        });
      case 'Y':
        setState(() {
          indexY = index;
        });
      case 'Z':
        setState(() {
          indexZ = index;
        });
    }
  }

  int makeCalculation(int option) {
    switch (option) {
      case 1:
        return 2 * values[indexX] + 11;
      case 2:
        return 2 * values[indexZ] + values[indexY] - 5;
      case 3:
        return (values[indexY] + values[indexZ] - values[indexX]).abs();
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Terminus Calculator')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SymbolsRow(letter: 'X', onSelectIcon: onSelectIcon),
              SymbolsRow(letter: 'Y', onSelectIcon: onSelectIcon),
              SymbolsRow(letter: 'Z', onSelectIcon: onSelectIcon),
              SizedBox(height: 75),
              ResultBox(onCalculate: makeCalculation),
            ],
          ),
        ),
      ),
    );
  }
}
