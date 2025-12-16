import 'package:bootcamp_02/detailpage.dart';
import 'package:flutter/material.dart';

// class, extends, kurucu fonksiyon, nesneye dayalı programlama nedir araştırabilirsiniz
//homepage adında bir sınıfım var ve statelesswidgetten extends alıyor
class Homepage extends StatelessWidget {
  //sınıfım ile aynı isimde kurucu fonksiyon
  Homepage({Key? key}) : super(key: key);

  //dizi mantığında resimlerin urllerini tutacak bir liste
  //final ile içerisine ekleme yapılabilir ama değiştirilemez olduğunu belirtiyorum
  //var imageList = [...] tarzında olsaydı hem ekleme yapılabilir em değiştirilebilirdi 
  final imageList = [
    "https://picsum.photos/id/1011/300/300",
    "https://picsum.photos/id/1012/300/300",
    "https://picsum.photos/id/1013/300/300",
    "https://picsum.photos/id/1015/300/300",
    "https://picsum.photos/id/1016/300/300",
  ];
  @override
  Widget build(BuildContext context) {
    //uygulamamın iskeletini oluşturan scaffold widgeti
    return Scaffold(

      body: Column(
        children: [
          //yükseklik olarak 50px boşluk vermeye yarıyor
          SizedBox(height: 50),
          Container(
            height: 100,
            //ListViewin daha komplike hali
            child: ListView.builder(
              //kaydırma yönününün hangi yönde olacağını belirliyoruz
              scrollDirection: Axis.horizontal,
              //ne kadar widget oluşturacağını belirtiyoruz(imageList listesinin uzunluğu kadar)
              itemCount: imageList.length,
              //index sayısı imageList.length olana kadar döner
              //item builder return olarak bir widget döndürür
              //for döngüsü gibi düşünülerebilir context sayfa bilgisini aktarırken, index döngülerdeki i değişkeni gibidir
              itemBuilder: (context, index) {
                //padding all parametresi ile sağ, sol, üst ve alt bölgelerden boşluk verilmesini saplar
                return  Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    //container genişlik ve yükseklik parametresi
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      //containerın şeklinin daire şeklinde olması için
                      shape: BoxShape.circle,
                      // renki color olarakta ekleyebilirdik burada instagram stroy çerçevesine benzemesi için gradient ekleniyor
                      gradient: LinearGradient(colors: [Colors.yellow,Colors.purple])
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        //profil resminin gösterilebilmesi için listedeki elemanları index değeriyle döndürüyoruz
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(imageList[index])),
                          shape: BoxShape.circle
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          //ListView sonsuz genişliğe sahiptir
          //Column ve row sonlu
          //Column içerisinde listview kullanıldığında boyut hatası verir
          //Listviewin boyutunu sınırlamak için container, sizedbox, expanded gibi widgetlar giriilebilir
          Expanded(
            child: ListView.builder(
              //benzer yapıda kaydırma yönü ve ne kadar item döneceğini belirtir
              //index sayısı imageList.length olana kadar döner
              scrollDirection: Axis.vertical,
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                //bir widgete tıklanabilirlik özelliği sağlar
                return GestureDetector(
                  //onTap bir kere tıklama işlemini gösterir
                  //navigator.push işlemi Detail page sayfasına yönlendirmeyi sağlar
                  //detail page sayfasına resim içeriğinin aktarılmasını sağlıyoruz
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(image: imageList[index])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        //400 genişlik 400 yükseliğe sahip image olara sırasıyla listedeki imageleri gösteren container
                        //BoxFit.fill ne işeleve yarar araştırabilirsiniz
                        Container(
                          width: 400,
                          height: 400,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(imageList[index]),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        //containerın altında profil resmi ve beğeni iconu için koyulmuş içerik
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: NetworkImage(imageList[index]))
                                ),
                              ),
                            ),
                            //beğeni iconu
                            Icon(Icons.favorite_border,)
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
