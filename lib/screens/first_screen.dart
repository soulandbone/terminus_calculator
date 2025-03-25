import 'package:flutter/material.dart';
import 'package:terminus_app/widgets/result_box.dart';
import 'package:terminus_app/widgets/symbols_row.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  void onSelectIcon(int index, ResultBoxState resultBoxState, String letter) {
    resultBoxState.updateIcon(index, letter);
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ResultBoxState> resultBoxKey = GlobalKey<ResultBoxState>();

    return Scaffold(
      appBar: AppBar(title: Text('Terminus Calculator')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SymbolsRow(
                letter: 'X',
                onSelectIcon: (index) {
                  //      final resultBoxState = resultBoxKey.currentState;

                  onSelectIcon(index, resultBoxKey.currentState!, 'x');
                },
              ),
              SymbolsRow(
                letter: 'Y',
                onSelectIcon: (index) {
                  //      final resultBoxState = resultBoxKey.currentState;

                  onSelectIcon(index, resultBoxKey.currentState!, 'y');
                },
              ),
              SymbolsRow(
                letter: 'Z',
                onSelectIcon: (index) {
                  //      final resultBoxState = resultBoxKey.currentState;

                  onSelectIcon(index, resultBoxKey.currentState!, 'z');
                },
              ),
              SizedBox(height: 75),
              ResultBox(key: resultBoxKey),
            ],
          ),
        ),
      ),
    );
  }
}
