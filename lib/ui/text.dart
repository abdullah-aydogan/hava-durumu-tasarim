import 'package:flutter/material.dart';

class Yazi extends StatelessWidget {

  String icerik;

  Yazi({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return Text(icerik);
  }
}