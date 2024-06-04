import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

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
              color: const Color.fromARGB(255, 97, 97, 97),
              child: InkWell(
                splashColor: const Color.fromARGB(255, 255, 255, 255).withAlpha(30),
                onTap: () {
                  debugPrint('Card taped');
                },
                child: SizedBox(
                  //width: 300,
                  width: screenWidth * 0.8,
                  //height: screenHeight * 0.25,
                  child: Column(
                    children:  [
                      Text('ムーンロード',
                        style: TextStyle(fontSize: 30.0,
                        color: Colors.white)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Card(
                            margin: EdgeInsets.only(top:screenHeight * 0.03, bottom:screenHeight * 0.03),
                            color: Color.fromARGB(255, 42, 44, 65),
                            child: InkWell(
                              splashColor: const Color.fromARGB(255, 255, 255, 255).withAlpha(30),
                              onTap: () {
                                debugPrint('Card taped');
                              },
                              child: SizedBox(
                                //width: 300,
                                width: screenWidth * 0.42,
                                height: screenHeight * 0.1,
                              ),
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.only(top:screenHeight * 0.03, bottom:screenHeight * 0.03),
                            color: Color.fromARGB(255, 58, 76, 136),
                            child: InkWell(
                              splashColor: const Color.fromARGB(255, 255, 255, 255).withAlpha(30),
                              onTap: () {
                                debugPrint('Card taped');
                              },
                              child: SizedBox(
                                //width: 300,
                                width: screenWidth * 0.15,
                                height: screenHeight * 0.1,
                              ),
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.only(top:screenHeight * 0.03, bottom:screenHeight * 0.03),
                            color: Color.fromARGB(255, 236, 236, 211),
                            child: InkWell(
                              splashColor: const Color.fromARGB(255, 255, 255, 255).withAlpha(30),
                              onTap: () {
                                debugPrint('Card taped');
                              },
                              child: SizedBox(
                                //width: 300,
                                width: screenWidth * 0.03,
                                height: screenHeight * 0.1,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}