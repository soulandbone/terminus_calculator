import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:terminus_app/providers/index_provider.dart';

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
    final indexesList = ref.watch(
      selectedIndexProvider,
    ); // watches the list of index.
    final selectedIndex =
        indexesList[getIndex]; // Because the list holds on the index [0],[1] and [2] the values of X, Y and Z respectively, we want the letter in which we actively are

    return InkWell(
      onTap: () {
        ref.read(selectedIndexProvider.notifier).updateIndex(index, letter);
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border:
              index ==
                      selectedIndex // if the current index, is the same as the selectedIndex in the state, then this is the one that is actually active and should be highlighted
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
