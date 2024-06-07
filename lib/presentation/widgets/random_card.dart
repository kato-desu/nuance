import 'package:flutter/material.dart';

class RandomCard extends StatefulWidget {
 // RandomCard({super.key, required this.random_color, required this.h});
  final Color random_color; //受け取る変数の定義
  final double h;
  RandomCard(this.random_color,this.h);//コンストラクタの定義

  @override
  State<RandomCard> createState() => _RandomCardState();
}

class _RandomCardState extends State<RandomCard> {
  String toHex(Color color) {    //Colorを文字列の色コードに変換
    final colorStr = color.value.toRadixString(16).toString();
    if (colorStr.length == 8) {
      final hexcolor = colorStr.substring(2);
      final transparent = colorStr.substring(0, 2);
      if (transparent == "ff") {
        return "#$hexcolor";
      } else {
        return "#" + hexcolor + transparent;
      }
    } else {
      return "#" + colorStr + "00";
    }
  }

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
          child: Text('$random_code', //各々の色コードを指定
              style: TextStyle(fontSize: 30.0, color: Colors.white)),
        ),
      ),
    );
  }
}