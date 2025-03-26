import 'package:flutter/material.dart';
import 'package:terminus_app/widgets/result_item.dart';

class ResultBox extends StatefulWidget {
  const ResultBox({required this.onCalculate, super.key});

  final Function(int number) onCalculate;

  @override
  State<ResultBox> createState() => ResultBoxState();
}

class ResultBoxState extends State<ResultBox> {
  // int selectedX = 0;
  //int selectedY = 0;
  //int selectedZ = 0;

  // List<int> values = [0, 10, 11, 20, 21, 22]; in Theory not needed.

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ResultItem(widget.onCalculate(1)),
        ResultItem(widget.onCalculate(2)),
        ResultItem(widget.onCalculate(3)),
      ],
    );
  }
}
