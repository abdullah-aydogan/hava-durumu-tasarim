import 'package:flutter/material.dart';
import '../renkler.dart';

class BilgiKutu extends StatelessWidget {

  String icerik;

  BilgiKutu({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ikinciRenk,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(icerik, style: TextStyle(color: ikinciRenk, fontSize: 16),),
      ),
    );
  }
}