import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:terminus_app/providers/calculations_provider.dart';

class SymbolsRowItem extends ConsumerWidget {
  const SymbolsRowItem({required this.letter, required this.index, super.key});

  final int index;
  final String letter;

  int get getIndex {
    switch (letter) {
      case 'X':
        return 0;
      case 'Y':
        return 1;
      case 'Z':
        return 2;
      default:
        return -1;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<int> selectedIndex = ref.watch(selectedIndexProvider)['index']!;
    return InkWell(
      onTap: () {
        ref.read(selectedIndexProvider.notifier).updateIndex(index, letter);
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border:
              index == selectedIndex[getIndex]
                  ? Border.all(color: Colors.green, width: 4)
                  : null,
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/symbol_${index + 1}.png'),
        ),
      ),
    );
  }
}
