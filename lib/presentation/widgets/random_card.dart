import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nuance/apprication/state/random_colors.dart';

class RandomCard extends ConsumerWidget {
  RandomCard({
    super.key,
  });

  String color_code0 = '?????????';
  String color_code1 = '?????????'; //色コード
  String color_code2 = '?????????';
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
  Widget build(BuildContext context, WidgetRef ref) {
    // ここで ref.watch など
    double screenWidth = MediaQuery.of(context).size.width; //画面横幅習得
    double screenHeight = MediaQuery.of(context).size.height; //画面縦幅習得
    List<Color> random_colors = ref.watch(randomcolorsNotifierProvider);
    color_code0 = toHex(random_colors[0]);
    color_code1 = toHex(random_colors[1]);
    color_code2 = toHex(random_colors[2]);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Card(
              color: random_colors[0],
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
                      Text('$color_code0',
                          style:
                              TextStyle(fontSize: 30.0, color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: random_colors[1],
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
                      Text('$color_code1',
                          style:
                              TextStyle(fontSize: 30.0, color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: random_colors[2],
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
                      Text('$color_code2',
                          style:
                              TextStyle(fontSize: 30.0, color: Colors.white)),
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
