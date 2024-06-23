import 'package:flutter/material.dart';
import '../../domain/features/tohex.dart';

class RandomCard extends StatefulWidget {
  // RandomCard({super.key, required this.random_color, required this.h});
  final Color random_color; //受け取る変数の定義
  final double h;
  RandomCard(this.random_color, this.h); //コンストラクタの定義

  @override
  State<RandomCard> createState() => _RandomCardState();
}

class _RandomCardState extends State<RandomCard> {
  bool selected = false; //色固定ボタンのステータス管理用

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //画面横幅習得
    double screenHeight = MediaQuery.of(context).size.height; //画面縦幅習得
    String random_code = toHex(widget.random_color);
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
                  selected = !selected;
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
