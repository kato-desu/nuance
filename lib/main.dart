import 'package:flutter/material.dart';
import './presentation/widgets/bottom_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  //runApp(const MyApp());
  const app = MyApp();
  const scope = ProviderScope(child: app);
  runApp(scope);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomBar(),
    );
  }

}
