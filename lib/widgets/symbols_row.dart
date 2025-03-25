import 'package:flutter/material.dart';
import 'package:terminus_app/widgets/symbols_row_item.dart';

class SymbolsRow extends StatefulWidget {
  const SymbolsRow({
    required this.letter,
    required this.onSelectIcon,
    super.key,
  });

  final String letter;
  final Function(int index) onSelectIcon;

  @override
  State<SymbolsRow> createState() => _SymbolsRowState();
}

class _SymbolsRowState extends State<SymbolsRow> {
  var indexSelected = -1;

  void isSelectedCallBack(int index) {
    setState(() {
      indexSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.letter,
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
        ),

        for (int index = 0; index <= 5; index++)
          SymbolsRowItem(
            selectedIndex: indexSelected,
            widget.onSelectIcon,
            index: index,
            isSelectedCallBack: (index) {
              isSelectedCallBack(index);
            },
          ),
      ],
    );
  }
}
