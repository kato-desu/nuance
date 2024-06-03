//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:core';

import 'package:flutter/widgets.dart';




class RandomScreen extends StatefulWidget {
  const RandomScreen({super.key});

  @override
  State<RandomScreen> createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomScreen> {
  var randomColor1 = const Color(0xffffffff);//ランダムな色
  var randomColor2 = const Color(0xffffffff);//ランダムな色
  var randomColor3 = const Color(0xffffffff);//ランダムな色
  String color_code1 = '0xfffffffff';
  String color_code2 = '0xfffffffff';
  String color_code3 = '0xfffffffff';

  String toHex(Color color){
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
    double screenWidth = MediaQuery.of(context).size.width;//画面横幅習得
    double screenHeight = MediaQuery.of(context).size.height;//画面縦幅習得

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Card(
              color: randomColor1,
              child: InkWell(
                splashColor: const Color.fromARGB(255, 255, 255, 255).withAlpha(30),
                onTap: () {
                  debugPrint('Card taped');
                },
                child: SizedBox(
                  //width: 300,
                  width: screenWidth * 0.7,
                  height: screenHeight * 0.42,
                  child: Column(
                    children:  [
                      Text('$color_code1',
                        style: TextStyle(fontSize: 30.0,
                        color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),

            Card(
              color: randomColor2,
              child: InkWell(
                splashColor: const Color.fromARGB(255, 255, 255, 255).withAlpha(30),
                onTap: () {
                  debugPrint('Card taped');
                },
                child: SizedBox(
                  width: screenWidth * 0.7,
                  height: screenHeight * 0.15,
                  child: Column(
                    children:  [
                      Text('$color_code2',
                        style: TextStyle(fontSize: 30.0,
                        color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),

            Card(
              color: randomColor3,
              child: InkWell(
                splashColor: const Color.fromARGB(255, 255, 255, 255).withAlpha(30),
                onTap: () {
                  debugPrint('Card taped');
                },
                child: SizedBox(
                  width: screenWidth * 0.7,
                  height: screenHeight * 0.08,
                  child: Column(
                    children:  [
                      Text('$color_code3',
                        style: TextStyle(fontSize: 30.0,
                        color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        
        onPressed: () {
          setState(() {
            randomColor1 = Color(//ランダムに色　 をセットする
              (Random().nextDouble() * 0xFFFFFF).toInt() << 0,
            ).withOpacity(1.0);
            color_code1 = toHex(randomColor1);
            randomColor2 = Color(//ランダムに色　 をセットする
              (Random().nextDouble() * 0xFFFFFF).toInt() << 0,
            ).withOpacity(1.0);
            color_code2 = toHex(randomColor2);
            randomColor3 = Color(//ランダムに色　 をセットする
              (Random().nextDouble() * 0xFFFFFF).toInt() << 0,
            ).withOpacity(1.0);
            color_code3 = toHex(randomColor3);

          });
        },
        child: Icon(Icons.add, color: Colors.black,),
        backgroundColor:Colors.white,
      ),
    );
  }
}