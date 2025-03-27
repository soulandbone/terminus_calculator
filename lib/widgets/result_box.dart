import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:terminus_app/providers/calculation_provider.dart';

import 'package:terminus_app/widgets/result_item.dart';

class ResultBox extends ConsumerWidget {
  const ResultBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(calculationProvider);
    return Container(
      decoration: BoxDecoration(color: Colors.green.withValues(alpha: 0.2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ResultItem(provider[0]),
          ResultItem(provider[1]),
          ResultItem(provider[2]),
        ],
      ),
    );
  }
}
