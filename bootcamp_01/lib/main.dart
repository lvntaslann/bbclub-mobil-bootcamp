//kütüpane, sayfalar vb içeriklerin kullanılacaksa import edilmesi
import 'package:bootcamp_01/04_myrow.dart';
import 'package:flutter/material.dart';

//uygulamanın ilk çalıştığı yer
void main() {
  //MainApp main fonksiyonundan sonra çalışıyor
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //materialapp main fonksiyondan sonra widget ağacında ilk oluşan kısım
    //materialapp kullanarak uygulamada materyal bir design yapılacağını belirtmiş oluyoruz
    return const MaterialApp(
      //uygulamayı çalıştırdığımızda sağ üstte kırmızı bir debug bayrağı var onun kapanması için
      debugShowCheckedModeBanner: false,
      //materialapptan sonra uygulamanın iskeleti olarak en üst ağaçta Scaffold tanımlanmış özel widget
      home: Myrow()
    );
  }
}
