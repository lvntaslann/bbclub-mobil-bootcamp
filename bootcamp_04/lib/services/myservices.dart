// provider hizmeti
// amacı: uygulama durumunu yönet ve dinleyicileri değişiklikler hakkında bilgilendir

import 'package:flutter/material.dart';

// provider desenini kullanarak uygulama durumunu yönetmek için hizmet sınıfı
class ProviderServices extends ChangeNotifier {
  // metin verilerini depolamak için özel değişken
  String _myText = "Levent";

  // metin değerine erişmek için getter
  String get myText => _myText;

  // metni güncelle ve tüm dinleyicileri bilgilendir
  void updateText(String newText) {
    _myText = newText;
    // durum değişikliği hakkında tüm dinleyicileri bilgilendir
    // olmazsa UI güncellenmez
    notifyListeners();
  }
}