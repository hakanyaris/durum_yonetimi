import 'package:flutter/material.dart';

class BirinciSayfa extends StatefulWidget {
  @override
  State<BirinciSayfa> createState() => _BirinciSayfaState();
}

class _BirinciSayfaState extends State<BirinciSayfa> {
  @override
  Widget build(BuildContext context) {
    print("Sayfa Baştan Oluşturuldu");
    return Scaffold(
      appBar: AppBar(title: Text("Birinci Sayfa")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlutterLogo(size: 96),
          _buildBaslik(),
          _buildYaziyiDegistir(),
          _buildChechBox(),
        ],
      ),
    );
  }

  Widget _buildBaslik() {
    print("Başlık oluşturuldu");
    return Text(_yazi, style: TextStyle(fontSize: 28));
  }

  Widget _buildYaziyiDegistir() {
    print("Yazıyı değiştir oluşturuldu");
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          _yazi = "Butona Tıklandı";
        },
        child: Text("Yazıyı Değiştir"),
      ),
    );
  }

  Widget _buildChechBox() {
    print("CheckBox Oluşturuldu");
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('CheckBox', style: TextStyle(fontSize: 18)),
        Checkbox(
          value: _checkboxSecilimi,
          onChanged: (bool? yeniDeger) {
            if (yeniDeger != null) _checkboxSecilimi = yeniDeger;
          },
        ),
      ],
    );
  }
}
