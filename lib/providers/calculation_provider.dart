import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:terminus_app/providers/index_provider.dart';

final calculationProvider = Provider<List<int>>((ref) {
  const List<int> values = [0, 10, 11, 20, 21, 22];

  final indexes = ref.watch(
    selectedIndexProvider,
  ); // index at 0, 1 and 2 are X, y and Z respectively

  // Perform your calculations using the inputs
  return [
    2 * values[indexes[0]] + 11, // Example calculation 1
    2 * values[indexes[2]] + values[indexes[1]] - 5, // Example calculation 2
    (values[indexes[1]] + values[indexes[2]] - values[indexes[0]])
        .abs(), // Example calculation 3
  ];
});
