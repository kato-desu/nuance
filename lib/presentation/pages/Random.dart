import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nuance/apprication/state/random_colors.dart';
import '../widgets/random_card.dart';

class RandomScreen extends ConsumerWidget {
  RandomScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ここで ref.watch など
    List<Color> random_colors =
        ref.watch(randomcolorsNotifierProvider); //ランダム色取得

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RandomCard(random_colors[0], 0.42),
            RandomCard(random_colors[1], 0.15),
            RandomCard(random_colors[2], 0.08),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final notifier = ref.read(randomcolorsNotifierProvider.notifier);
          notifier.updateState();
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
