import 'package:flutter/material.dart';

class RandomCard extends StatefulWidget {
  const RandomCard({super.key});

  @override
  State<RandomCard> createState() => _RandomCardState();
}

class _RandomCardState extends State<RandomCard> {
  var randomColor1 = const Color(0xffffffff); //ランダムな色
  var randomColor2 = const Color(0xffffffff); //ランダムな色
  var randomColor3 = const Color(0xffffffff); //ランダムな色
  String color_code1 = '0xfffffffff'; //色コード
  String color_code2 = '0xfffffffff';
  String color_code3 = '0xfffffffff';

  String toHex(Color color) {
    //Colorを文字列の色コードに変換
    final colorStr = color.value.toRadixString(16).toString();
    if (colorStr.length == 8) {
      final hexcolor = colorStr.substring(2);
      final transparent = colorStr.substring(0, 2);
      if (transparent == "ff") {
        return "#" + hexcolor;
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

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Card(
            color: randomColor1,
            child: InkWell(
              splashColor:
                  const Color.fromARGB(255, 255, 255, 255).withAlpha(30),
              onTap: () {
                debugPrint('Card taped');
              },
              child: SizedBox(
                //width: 300,
                width: screenWidth * 0.7,
                height: screenHeight * 0.42,
                child: Column(
                  children: [
                    Text('$color_code1',
                        style: TextStyle(fontSize: 30.0, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: randomColor2,
            child: InkWell(
              splashColor:
                  const Color.fromARGB(255, 255, 255, 255).withAlpha(30),
              onTap: () {
                debugPrint('Card taped');
              },
              child: SizedBox(
                width: screenWidth * 0.7,
                height: screenHeight * 0.15,
                child: Column(
                  children: [
                    Text('$color_code2',
                        style: TextStyle(fontSize: 30.0, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: randomColor3,
            child: InkWell(
              splashColor:
                  const Color.fromARGB(255, 255, 255, 255).withAlpha(30),
              onTap: () {
                debugPrint('Card taped');
              },
              child: SizedBox(
                width: screenWidth * 0.7,
                height: screenHeight * 0.08,
                child: Column(
                  children: [
                    Text('$color_code3',
                        style: TextStyle(fontSize: 30.0, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
