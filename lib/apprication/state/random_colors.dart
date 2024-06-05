import 'dart:math' ;
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'random_colors.g.dart';

@riverpod
class RandomcolorsNotifier extends _$RandomcolorsNotifier {
  @override
  List<Color> build() {
    // 最初のデータ
    return [Color.fromARGB(255, 116, 116, 116),Color.fromARGB(255, 116, 116, 116),Color.fromARGB(255, 116, 116, 116)];
  }

  // データを変更する関数
  void updateState() {

    Color newState0 = Color(//ランダムに色　 をセットする
              (Random().nextDouble() * 0xFFFFFF).toInt() << 0,
            ).withOpacity(1.0);
    Color newState1 = Color(//ランダムに色　 をセットする
              (Random().nextDouble() * 0xFFFFFF).toInt() << 0,
            ).withOpacity(1.0);
    Color newState2 = Color(//ランダムに色　 をセットする
              (Random().nextDouble() * 0xFFFFFF).toInt() << 0,
            ).withOpacity(1.0);
    state = [newState0,newState1,newState2];

  }

}