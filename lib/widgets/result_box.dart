import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:terminus_app/providers/index_provider.dart';

import 'package:terminus_app/widgets/result_item.dart';

class ResultBox extends ConsumerWidget {
  const ResultBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(selectedIndexProvider); //we watch for the indexes to update
    var coordinates =
        ref
            .watch(selectedIndexProvider.notifier)
            .coordinates; //we get the coordinates info
    return Container(
      decoration: BoxDecoration(color: Colors.green.withValues(alpha: 0.2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ResultItem(coordinates[0]),
          ResultItem(coordinates[1]),
          ResultItem(coordinates[2]),
          //
        ],
      ),
    );
  }
}
