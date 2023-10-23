import 'package:flutter/material.dart';
import 'package:hava_durumu_odev/renkler.dart';

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
            Icon(Icons.wb_sunny_outlined, color: yaziRenk,),
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
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ikinciRenk,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("22°C", style: TextStyle(color: ikinciRenk, fontSize: 16),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ikinciRenk,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Parçalı Bulutlu", style: TextStyle(color: ikinciRenk, fontSize: 16),),
                    ),
                  ),
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
                  ElevatedButton.icon(
                    onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Konum izinlerinizi kontrol ediniz."),
                      ));
                    },
                    icon: Icon(
                      Icons.location_on_outlined,
                      color: yaziRenk,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: anaRenk,
                      foregroundColor: yaziRenk,
                    ),
                    label: const Text("Konum Al"),
                  ),
                  ElevatedButton.icon(
                    onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Hava durumu bilgisi yenilendi."),
                      ));
                    },
                    icon: Icon(
                      Icons.refresh,
                      color: yaziRenk,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: anaRenk,
                      foregroundColor: yaziRenk,
                    ),
                    label: const Text("Yenile"),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Column(
                children: [
                  Text("Güncelleme Zamanı"),
                  Text("23.10.2023 | 18:02"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}