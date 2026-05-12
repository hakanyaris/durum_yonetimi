import 'package:durum_yonetimi/view/birinci_sayfa.dart';
import 'package:durum_yonetimi/view_model/birinci_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AnaUygyulama());
}

class AnaUygyulama extends StatelessWidget {
  const AnaUygyulama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (BuildContext context) {
          return BirinciViewModel();
        },
        child: BirinciSayfa(),
      ),
    );
  }
}
