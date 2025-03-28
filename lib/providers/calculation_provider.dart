import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:terminus_app/providers/index_provider.dart';

final calculationProvider = Provider<List<int>>((ref) {
  const List<int> values = [0, 10, 11, 20, 21, 22];

  final indexes = ref.watch(
    selectedIndexProvider,
  ); // index at 0, 1 and 2 are X, y and Z respectively, watches whenever any of those indexes change.

  return [
    2 * values[indexes[0]] + 11, // Equation for the first coordinate , 2x+11
    2 * values[indexes[2]] +
        values[indexes[1]] -
        5, // Equation for the second coordinate , 2z+y -5
    (values[indexes[1]] + values[indexes[2]] - values[indexes[0]]) //|y+z -x|
        .abs(), // Equation for the third coordinate
  ];
});
