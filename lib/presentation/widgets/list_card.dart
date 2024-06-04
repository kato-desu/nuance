import 'package:flutter/material.dart';

class ListCard extends StatefulWidget {
  const ListCard({super.key});

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //画面横幅習得
    double screenHeight = MediaQuery.of(context).size.height; //画面縦幅習得
    double color_tile_H = screenHeight * 0.05;
    return Card(
      color: const Color.fromARGB(255, 97, 97, 97),
      child: InkWell(
        splashColor: const Color.fromARGB(255, 255, 255, 255).withAlpha(30),
        onTap: () {
          debugPrint('Card taped');
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            width: screenWidth * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ムーンロード',
                    style: TextStyle(fontSize: 30.0, color: Colors.white)),
                Row(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.only(
                          top: screenHeight * 0.03,
                          bottom: screenHeight * 0.03),
                      color: Color.fromARGB(255, 42, 44, 65),
                      child: InkWell(
                        splashColor: const Color.fromARGB(255, 255, 255, 255)
                            .withAlpha(30),
                        onTap: () {
                          debugPrint('Card taped');
                        },
                        child: SizedBox(
                          width: screenWidth * 0.49,
                          height: color_tile_H,
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(
                          top: screenHeight * 0.03,
                          bottom: screenHeight * 0.03),
                      color: Color.fromARGB(255, 58, 76, 136),
                      child: InkWell(
                        splashColor: const Color.fromARGB(255, 255, 255, 255)
                            .withAlpha(30),
                        onTap: () {
                          debugPrint('Card taped');
                        },
                        child: SizedBox(
                          width: screenWidth * 0.175,
                          height: color_tile_H,
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(
                          top: screenHeight * 0.03,
                          bottom: screenHeight * 0.03),
                      color: Color.fromARGB(255, 236, 236, 211),
                      child: InkWell(
                        splashColor: const Color.fromARGB(255, 255, 255, 255)
                            .withAlpha(30),
                        onTap: () {
                          debugPrint('Card taped');
                        },
                        child: SizedBox(
                          width: screenWidth * 0.035,
                          height: color_tile_H,
                        ),
                      ),
                    ),
                Icon(Icons.favorite, color: Colors.black45, size: 20),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
