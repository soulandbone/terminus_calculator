import 'package:flutter/material.dart';

class ResultItem extends StatefulWidget {
  const ResultItem(this.number, {super.key});
  final int number;

  @override
  State<ResultItem> createState() => _ResultItemState();
}

class _ResultItemState extends State<ResultItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: Center(
        child: Text(
          (widget.number).toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
    );
  }
}
