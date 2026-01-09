// customStateFull widget'ını oluşturuyoruz
// amacımız: değişken durumu yöneten ve UI'ı dinamik olarak güncelleyen stateful widget yazmak

import 'package:bootcamp_4/services/myservices.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// StatefulWidget sınıfını kullanıyoruz çünkü değiştirilebilir durum oluşturmamız gerekiyor
class CustomStateFull extends StatefulWidget {
  // customStateFull widget'ımız için constructor yazıyoruz
  const CustomStateFull({Key? key}) : super(key: key);

  @override
  State<CustomStateFull> createState() => _CustomStateFullState();
}

// customStateFull widget'ımız için state sınıfını tanımlıyoruz
class _CustomStateFullState extends State<CustomStateFull> {
  // metni depolamak için yerel bir değişken tanımlıyoruz
  String myText = "";
  
  // metin girdisini yönetmek için bir controller oluşturuyoruz
  TextEditingController myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // değişkenlerimizi başlatıyoruz
    myText = "Levent";
    myController = TextEditingController();
  }

  @override
  void dispose() {
    // widget kaldırıldığında controller'ımızı temizliyoruz
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // durum yönetimi için provider hizmetini alıyoruz
    final state = Provider.of<ProviderServices>(context);
    debugPrint('build metodu çalıştırıldı');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // sağlayıcıdan gelen metni otomatik güncellemelerle gösteriyoruz
          Consumer<ProviderServices>(
            builder: (context, provider, child) {
              return Text(
                provider.myText,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          // sağlayıcı durumunu güncelleyen tıklanabilir bir container oluşturuyoruz
          GestureDetector(
            onTap: () {
              state.updateText("Updated Text");
            },
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Press',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // kullanıcı etkileşimi için metin giriş alanı ekliyoruz
          TextField(
            controller: myController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter text here',
              contentPadding: const EdgeInsets.all(12),
            ),
          ),
        ],
      ),
    );
  }
}
