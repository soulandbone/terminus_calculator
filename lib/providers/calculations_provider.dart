import 'package:flutter_riverpod/flutter_riverpod.dart';

class TerminusNotifier extends StateNotifier<Map<String, List<int>>> {
  TerminusNotifier()
    : super({
        'index': [0, 0, 0],
        'coordinates': [11, -5, 0],
      });

  List<int> values = [0, 10, 11, 20, 21, 22];

  void updateIndex(int selectedIndex, String letter) {
    List<int> updatedList = List.from(state['index'] as List<int>);
    switch (letter) {
      case 'X':
        updatedList = [selectedIndex, state['index']![1], state['index']![2]];
        break;
      case 'Y':
        updatedList = [state['index']![0], selectedIndex, state['index']![2]];
        break;
      case 'Z':
        updatedList = [state['index']![0], state['index']![1], selectedIndex];
        break;
    }

    Map<String, List<int>> newMap = {
      // Problem is order of assignation
      'index': updatedList,
      'coordinates': [
        calculateCoordinate(
          updatedList[0],
          updatedList[1],
          updatedList[2],
          '1',
        ),
        calculateCoordinate(
          updatedList[0],
          updatedList[1],
          updatedList[2],
          '2',
        ),
        calculateCoordinate(
          updatedList[0],
          updatedList[1],
          updatedList[2],
          '3',
        ),
      ],
    };

    state = newMap;
  }

  int calculateCoordinate(
    int indexX,
    int indexY,
    int indexZ,
    String coordinate,
  ) {
    switch (coordinate) {
      case '1':
        return 2 * values[indexX] + 11;

      case '2':
        return 2 * values[indexZ] + values[indexY] - 5;

      case '3':
        return (values[indexY] + values[indexZ] - values[indexX]).abs();
      default:
        return -999;
    }
  }
}

final selectedIndexProvider = StateNotifierProvider((ref) {
  return TerminusNotifier();
});
