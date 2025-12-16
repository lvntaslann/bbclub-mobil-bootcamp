import 'package:flutter/material.dart';

//MyText sınıfı bir veri değişimi kullanıcıya gösterilemeyen statelesswidgettan extends alıyor
class Mytext extends StatelessWidget {
  //sınıfımız ilk çağırıldığında çalışan kurucu fonksiyonumuz
  const Mytext({Key? key}) : super(key: key);

  //widget ağacımızın çizilmesi
  //aşağıdaki kısma eklenen her şey kullanıcı tarafından(bir şart koyulmadağı sürece) görüntülenir
  @override
  Widget build(BuildContext context) {
    //uygulamamızın iskeletini oluşturan scaffold widget
    return Scaffold(
      //body parametresi bir widget bekler 
      //ekranın ortasında BBCLUB yazısı olacak şekilde widget gösteriliyor
      body: Center(
        child: Text("BBCLUB"),
      ),
    );
  }
}
