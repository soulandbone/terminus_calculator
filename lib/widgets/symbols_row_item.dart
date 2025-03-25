import 'package:flutter/material.dart';

class SymbolsRowItem extends StatelessWidget {
  const SymbolsRowItem(
    this.onSelectIcon, {
    required this.selectedIndex,
    required this.index,
    required this.isSelectedCallBack,
    super.key,
  });

  final int index;
  final int selectedIndex;
  final Function(int index) onSelectIcon;
  final Function(int index) isSelectedCallBack;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onSelectIcon(index);
        isSelectedCallBack(index);
      },
      child: Container(
        decoration: BoxDecoration(
          border:
              selectedIndex == index
                  ? Border.all(color: Colors.red, width: 1)
                  : null,
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/symbol_${index + 1}.png'),
        ),
      ),
    );
  }
}
