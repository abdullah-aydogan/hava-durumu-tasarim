import 'package:flutter/material.dart';
import '../renkler.dart';
import 'text.dart';

class Buton extends StatelessWidget {

  String mesaj;
  String butonYazi;
  var ikon;

  Buton({required this.mesaj, required this.butonYazi, required this.ikon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Yazi(icerik: mesaj),
        ));
      },
      icon: ikon,
      style: ElevatedButton.styleFrom(
        backgroundColor: anaRenk,
        foregroundColor: yaziRenk,
      ),
      label: Yazi(icerik: butonYazi),
    );
  }
}