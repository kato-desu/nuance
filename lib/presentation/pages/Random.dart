import 'package:flutter/material.dart';
import 'dart:core';
import '../widgets/random_card.dart';

class RandomScreen extends StatefulWidget {
  const RandomScreen({super.key});

  @override
  State<RandomScreen> createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomScreen> {
  @override
  Widget build(BuildContext context) {
    return RandomCard();
  }
}
