//import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:riverpod_annotation/riverpod_annotation.dart';

/*
//色固定の状態管理用プロバイダー
final fixed_colorNotifierProvider = Provider.family<bool, int>((ref, id) {
  return fixed_colorNotifier();
});
*/

class fixed_colorNotifier extends StateNotifier<List<bool>> {
  //fixed_colorNotifier(): super();
  bool OPEN = false;
  bool LOCK = true;

  fixed_colorNotifier(super.state);

  //@override
  List<bool> build() {//初期値？
    return [OPEN, OPEN, OPEN];
  }

  void updateState(int id) {
    //int id = 1;
  // void updateState(int id) {
    // 変更前のデータ
    final oldState = state;
    // 変更後のデータ
    oldState[id] = !oldState[id];
    // oldState[id] = !oldState[id];
    final newState = oldState;
    // データを上書き
    state = newState;
  }
}
















/*
//import 'dart:math' ;
//import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'fixed_color.g.dart';

@riverpod
class Fixed_colorNotifier extends _$Fixed_colorNotifier {
  @override
  List<bool> build() {
    // 最初のデータ
    bool OPEN = false;
    bool LOCK = true;
    return [OPEN, OPEN, OPEN];
  }

  // データを変更する関数
  void updateState() {

  }


}
*/