import 'package:danmaku_universes/presentation/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game Page :D')),
      body: Container(
        child: Center(
          child: CardWidget(name: 'Kawaii', type: 1),
        ),
      ),
    );
  }
}
