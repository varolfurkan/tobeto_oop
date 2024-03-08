import 'package:flutter/material.dart';
import 'package:tobeto_oop/kurslar.dart';

class KursKart extends StatelessWidget {
  final Kurs kurs;
  const KursKart({super.key, required this.kurs});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(
            kurs.resim,
            fit: BoxFit.cover,
          ),
          Text(kurs.kurs_adi),
          Text(kurs.aciklama),
          Text(kurs.kategori),
          Text("Eğitmen: ${kurs.egitmen_adi}")
        ],
      ),
    );
  }
}
