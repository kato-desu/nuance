import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nuance/apprication/state/random_colors.dart';
import '../widgets/random_card.dart';
import '../../apprication/state/fixed_color.dart';

class RandomScreen extends ConsumerStatefulWidget {
  const RandomScreen({
    super.key,
  });
  @override
  ConsumerState<RandomScreen> createState() => _RandomScreenState();
}

class _RandomScreenState extends ConsumerState<RandomScreen> {
  @override
  Widget build(BuildContext context) {
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
          setState(() {
            List<bool> notifierFix = ref.watch(fixed_colorNotifierProvider);
            final notifier = ref.read(randomcolorsNotifierProvider.notifier);
            notifier.updateState(notifierFix);
          });
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
