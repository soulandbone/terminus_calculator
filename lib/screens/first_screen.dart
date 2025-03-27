import 'package:flutter/material.dart';

import 'package:terminus_app/widgets/result_box.dart';
import 'package:terminus_app/widgets/symbols_row.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text('Terminus Calculator'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.blueAccent]),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SymbolsRow(letter: 'X'),
              SymbolsRow(letter: 'Y'),
              SymbolsRow(letter: 'Z'),
              const SizedBox(height: 75),
              ResultBox(),
            ],
          ),
        ),
      ),
    );
  }
}
