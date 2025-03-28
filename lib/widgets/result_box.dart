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
          ResultItem(
            provider[0],
          ), //first index of the state, representing the first calculated coordinate (that depends on the index State of x ) 2x+11
          ResultItem(
            provider[1],
          ), //  //second index of the state, representing the second calculated coordinate (that depends on the index State of z and y) 2z+y -5
          ResultItem(
            provider[2],
          ), // third index of the state, representing the third calculated coordinate (that depends on the index State of z, y and x) |y+z -x|
        ],
      ),
    );
  }
}
