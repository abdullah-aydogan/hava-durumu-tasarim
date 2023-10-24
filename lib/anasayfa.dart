import 'package:flutter/material.dart';
import 'package:hava_durumu_odev/ikonlar.dart';
import 'package:hava_durumu_odev/renkler.dart';
import 'package:hava_durumu_odev/ui/container.dart';
import 'package:hava_durumu_odev/ui/elevated_button.dart';
import 'package:hava_durumu_odev/ui/text.dart';

class Anasayfa extends StatefulWidget {

  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            appBarIkon,
            const SizedBox(width: 10,),
            Text("Hava Durumu", style: TextStyle(color: yaziRenk),),
          ],
        ),
        backgroundColor: anaRenk,
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              child: Text("Pendik / İstanbul", style: TextStyle(fontSize: 16),),
            ),
            Image.asset("resimler/hava_resim.png"),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BilgiKutu(icerik: "22°C"),
                  const SizedBox(width: 10,),
                  BilgiKutu(icerik: "Parçalı Bulutlu"),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 30),
              child: Text(
                "Bugün güzel bir hava var, dışarıda etkinlik yapmak için ideal bir gün.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buton(
                    mesaj: "Konum izinlerinizi kontrol ediniz.",
                    butonYazi: "Konum Al",
                    ikon: konumIkon,),
                  Buton(
                    mesaj: "Hava durumu bilgisi yenilendi.",
                    butonYazi: "Yenile",
                    ikon: yenileIkon,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(
                children: [
                  Yazi(icerik: "Güncelleme Zamanı"),
                  Yazi(icerik: "23.10.2023 | 18:02"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}