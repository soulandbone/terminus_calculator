import 'package:flutter/material.dart';

class SymbolsRowItem extends StatelessWidget {
  const SymbolsRowItem({
    required this.isSelected,
    required this.letter,
    required this.onSelect,
    required this.index,
    required this.onUpdateHighlight,
    super.key,
  });

  final bool isSelected;
  final int index;
  final String letter;
  final Function(int index, String letter) onSelect;
  final Function(int index) onUpdateHighlight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onSelect(index, letter);
        onUpdateHighlight(index);
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border: isSelected ? Border.all(color: Colors.green, width: 4) : null,
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/symbol_${index + 1}.png'),
        ),
      ),
    );
  }
}
