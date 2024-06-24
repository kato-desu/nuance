import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/features/tohex.dart';
import '../../apprication/state/fixed_color.dart';

class RandomCard extends ConsumerStatefulWidget {
  final Color random_color; //受け取る変数の定義
  final double h;
  RandomCard(this.random_color, this.h);
  @override
  ConsumerState<RandomCard> createState() => _RandomCardState();
}

class _RandomCardState extends ConsumerState<RandomCard> {
  bool selected = false; //色固定ボタンのステータス管理用

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //画面横幅習得
    double screenHeight = MediaQuery.of(context).size.height; //画面縦幅習得
    String random_code = toHex(widget.random_color);

    int card_num = 0;
    if (widget.h == 0.42) //カードの上からの順番を記述
      card_num = 0;
    else if (widget.h == 0.15)
      card_num = 1;
    else
      card_num = 2;

    return Card(
      color: widget.random_color, //ランダムでえらばれた色を指定
      child: InkWell(
        splashColor: const Color.fromARGB(255, 255, 255, 255).withAlpha(30),
        onTap: () {
          debugPrint('Card taped');
        },
        child: SizedBox(
          width: screenWidth * 0.7,
          height: screenHeight * widget.h, //高さを各々指定
          child: Row(children: <Widget>[
            Text('$random_code', //各々の色コードを指定
                style: TextStyle(fontSize: 30.0, color: Colors.white)),
            Expanded(child: SizedBox()), //余白でアイコンを右に追いやる
            IconButton(
              icon: Icon(Icons.lock_open,
                  color: Color.fromARGB(137, 0, 0, 0), size: 25),
              onPressed: () {
                // ボタンが押された際の動作を記述する
                setState(() {
                  final notifier =
                      ref.read(fixed_colorNotifierProvider.notifier);
                  notifier.updateState(card_num);
                  List<bool> fixed_colors =
                      ref.watch(fixed_colorNotifierProvider);
                  selected = fixed_colors[card_num];
                });
              },
              isSelected: selected,
              selectedIcon: Icon(Icons.lock,
                  color: Color.fromARGB(137, 0, 0, 0), size: 25),
            ),
          ]),
        ),
      ),
    );
  }
}
