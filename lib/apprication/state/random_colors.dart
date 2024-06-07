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
    state = List<Color>.empty(growable: true);
    int i;
    for(i=0;i<3;i++){//ランダムに色をセットする * 3回
      state.add(Color(
              (Random().nextDouble() * 0xFFFFFF).toInt() << 0,
            ).withOpacity(1.0));
    }
  }

}