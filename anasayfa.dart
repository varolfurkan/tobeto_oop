import 'package:flutter/material.dart';
import 'package:tobeto_oop/kurslar.dart';
import 'package:tobeto_oop/kullanici.dart';
import 'package:tobeto_oop/veri_kaynagi.dart';
import 'kurslar_kart_yapisi.dart';

class Anasayfa extends StatefulWidget {

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  late List<Kurs> kurslar;
  late Kullanici kullanici;

  @override
  void initState() {
    super.initState();
    kurslar = VeriKaynagi.getKurslar();
    kullanici = VeriKaynagi.getKullanici();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Oop Deneme"),
      ),
      body: ListView.builder(
        itemCount: kurslar.length,
        itemBuilder: (BuildContext context, int index) {
          return KursKart(kurs: kurslar[index]);
        },
      ),
    );
  }
}
