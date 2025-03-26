import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      decoration: BoxDecoration(border: Border.all(color: Colors.lightBlue)),
      child: Center(
        child: Text(
          (widget.number).toString(),
          style: GoogleFonts.bungee(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 42,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
