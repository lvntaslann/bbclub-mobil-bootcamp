import 'package:flutter/material.dart';

//detailpage sınıfı statlesswidgetten extends alıyor
class Detailpage extends StatelessWidget {
  //homepage üzerinden image parametresini almak için değişken
  final String image;
  //kurucu fonksiyon
  //flutter boş gelen veri, değişken vb sevmez
  // bu yüzden image değişkenini required parametresi ile zorunlu yapıyor eğer veri boş gelirse uygulama çöker(tabi çözümleri var araştırabilirsiniz)
  const Detailpage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //resmi internetten yükleyebilmek için
          Image.network(image),
          //padding ile çevresine boşluk veriyoruz
          //text içeriğine style parametresi ile güzelleştirdik
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
