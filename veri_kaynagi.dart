import 'package:tobeto_oop/kurslar.dart';
import 'package:tobeto_oop/kullanici.dart';

class VeriKaynagi {
  static List<Kurs> getKurslar() {
    return [
      Kurs(
        kurs_adi: "Flutter Giriş",
        aciklama: "Flutter'a giriş seviye kursu",
        kategori: "Mobil Programlama",
        resim: "https://picsum.photos/id/33/150/150",
        egitmen_adi: "Ahmet Mehmet",
      ),
      Kurs(
        kurs_adi: "Dart Temelleri",
        aciklama: "Dart dilinin temel özellikleri",
        kategori: "Programlama Dilleri",
        resim: "https://picsum.photos/id/12/150/150",
        egitmen_adi: "Ayşe Fatma",
      ),
    ];
  }

  static Kullanici getKullanici() {
    return Kullanici(
      userName: "example_user",
      name: "John",
      lastName: "Doe",
      email: "example@example.com",
      password: "123456",
    );
  }
}
