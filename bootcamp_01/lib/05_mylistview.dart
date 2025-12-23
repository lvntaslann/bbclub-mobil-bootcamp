import 'package:flutter/material.dart';

//statelesswidgettan extends alan Mylistview adında oluşturduğumuz sınıf
class Mylistview extends StatelessWidget {
  //nesneye dayalı(oop) nedir araştırabilirsiniz
  //flutter nesneye dayalı mıdır ? araştırın
  //kurucu fonksiyon sınıfımız çağırıldığında ilk çalışan kısım
  const Mylistview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //uygulamamızdaki sayfamızın iskeletini oluşturan scaffold widget
    return Scaffold(
      // column ve row özelliklerini bir arada taşıyabilen aynı zamanda kaydırma özelliğine sahip widget
      body: ListView(
        //kaydırlacak içeriğin hangi yönde kaydıralacağını belirtir
        // vertical -> dikey, horizantal -> yatay
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Colors.orange),
          ),

          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Colors.red),
          ),

          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Colors.purple),
          ),

          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Colors.pink),
          ),

          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Colors.yellow),
          ),
        ],
      ),
    );
  }
}


