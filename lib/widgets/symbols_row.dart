import 'package:flutter/material.dart';

import 'package:terminus_app/widgets/symbols_row_item.dart';

class SymbolsRow extends StatelessWidget {
  const SymbolsRow({required this.letter, super.key});

  final String letter;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          letter,
          style: const TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
        ),

        for (int index = 0; index <= 5; index++)
          SymbolsRowItem(letter: letter, index: index),
      ],
    );
  }
}
