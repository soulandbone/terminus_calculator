import 'package:flutter_riverpod/flutter_riverpod.dart';

class IndexNotifier extends StateNotifier<List<int>> {
  IndexNotifier() : super([0, 0, 0]);

  List<int> values = [0, 10, 11, 20, 21, 22];

  void updateIndex(int selectedIndex, String letter) {
    List<int> updatedList = List.from(state);
    switch (letter) {
      case 'X':
        updatedList = [selectedIndex, state[1], state[2]];
        break;
      case 'Y':
        updatedList = [state[0], selectedIndex, state[2]];
        break;
      case 'Z':
        updatedList = [state[0], state[1], selectedIndex];
        break;
    }
    state = updatedList;
    print(state);
  }
}

final selectedIndexProvider = StateNotifierProvider((ref) {
  return IndexNotifier();
});
