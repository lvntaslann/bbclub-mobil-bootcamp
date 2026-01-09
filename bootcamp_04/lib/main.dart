// ana uygulama giriş noktası
// amacı: flutter uygulamasını başlat ve yapılandır

import 'package:bootcamp_4/widget/custom_statefull.dart';
import 'package:bootcamp_4/services/myservices.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// uygulamanın giriş noktası
void main() {
  runApp(const MainApp());
}

// uygulamanın kök widget'ı
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // uygulama temasını yapılandır
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      // durum yönetimi için sağlayıcıları kur
      home: MultiProvider(
        providers: [
          // tüm widget ağacına ProviderServices sağla
          ChangeNotifierProvider(create: (_) => ProviderServices()),
        ],
        // ana uygulama widget'ı
        child: const CustomStateFull(),
      ),
    );
  }
}
