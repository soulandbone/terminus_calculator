import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:terminus_app/providers/calculations_provider.dart';
import 'package:terminus_app/widgets/result_item.dart';

class ResultBox extends ConsumerWidget {
  const ResultBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var provider1 = ref.watch(selectedIndexProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ResultItem(provider1['coordinates']![0]),
        ResultItem(provider1['coordinates']![1]),
        ResultItem(provider1['coordinates']![2]),
      ],
    );
  }
}
