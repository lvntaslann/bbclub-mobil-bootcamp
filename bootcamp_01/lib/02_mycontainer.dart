import 'package:flutter/material.dart';

//statelesswidgettan extends alan Mycontainer adında oluşturduğumuz sınıf
class Mycontainer extends StatelessWidget {
  //kurucu fonksiyon
  const Mycontainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //uygulamamızın ana iskletini oluşturan scaffold widgeti
    return Scaffold(
      //center widgeti ile içeriğimizi ortalıyoruz
      body: Center(
        // 300 genişlik 300 yüksekliğe sahip container widgeti
        child: Container(
          width: 300,
          height: 300,
          //decoration parametresi ile özelliklerini(ovallik, border, rengi, shape vb) değiştirebiliriz
          //araştırarak border ekleleme, border kalınlığı değiştirme, border rengi değiştirme işlemleri ekleyebilirsiniz
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(20),
          ),
          //containerın childiğini  belirtir containerın ortasında BBCLUB yazısı eklenmiştir
          child: Center(child: Text("BBCLUB")),
        ),
      ),
    );
  }
}
