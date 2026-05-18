import 'package:durum_yonetimi/model/siparis.dart';
import 'package:flutter/material.dart';

class IkinciViewModel with ChangeNotifier {
  List<Siparis> siparisler=[];
  IkinciViewModel(){
    for (int i=0; i<=5;i++){
      Siparis siparis=Siparis("Siparis $i", "Onay bekliyor...");
      siparisler.add(siparis);
      
    } 
   for (var element in siparisler) {
    print(element.baslik);
     
   }
  }
  void siparisOnayla(int index){
    siparisler[index].durum="Siparis Onaylandı";
    notifyListeners();
  }
}
