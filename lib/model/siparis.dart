import 'package:flutter/material.dart';

class Siparis with ChangeNotifier {
  String baslik;
  String durum;
  Siparis(this.baslik, this.durum);

  void siparisOnayla() {
    durum = "Siparis Onaylandı";
    notifyListeners();
  }
}
