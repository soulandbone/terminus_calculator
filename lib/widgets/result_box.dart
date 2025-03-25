import 'package:flutter/material.dart';
import 'package:terminus_app/widgets/result_item.dart';

class ResultBox extends StatefulWidget {
  const ResultBox({super.key});

  @override
  State<ResultBox> createState() => ResultBoxState();
}

class ResultBoxState extends State<ResultBox> {
  int selectedX = 0;
  int selectedY = 0;
  int selectedZ = 0;

  List<int> values = [0, 10, 11, 20, 21, 22];

  int makeCalculation(int option) {
    switch (option) {
      case 1:
        return 2 * values[selectedX] + 11;
      case 2:
        return (2 * values[selectedZ] + values[selectedY] - 5);
      case 3:
        return (values[selectedY] + values[selectedZ] - values[selectedX])
            .abs();
      default:
        return 0;
    }
  }

  void updateIcon(int index, String letter) {
    switch (letter) {
      case 'x':
        setState(() {
          selectedX = index;
        });
      case 'y':
        setState(() {
          selectedY = index;
        });
      case 'z':
        setState(() {
          selectedZ = index;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ResultItem(makeCalculation(1)),
        ResultItem(makeCalculation(2)),
        ResultItem(makeCalculation(3)),
      ],
    );
  }
}
