import 'package:durum_yonetimi/view/yonlendirme_butonu.dart';
import 'package:durum_yonetimi/view_model/birinci_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BirinciSayfa extends StatefulWidget {
  @override
  State<BirinciSayfa> createState() => _BirinciSayfaState();
}

class _BirinciSayfaState extends State<BirinciSayfa> {
  @override
  Widget build(BuildContext context) {
    print("Sayfa Baştan Oluşturuldu");

    return Consumer<BirinciViewModel>(
      builder: (context, viewModel, child) {
        print("Scaffold -consumer oluşturuldu.");

        return Scaffold(
          backgroundColor: viewModel.renk,
          appBar: AppBar(title: Text("Birinci Sayfa")),
          body:
              child, //Consumer child parametresine atadığımız Column widgetini göster fakat providerde notifyListeners çağrıldığında bu kısmı (Column)güncelleme  demek istiyoruz.
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlutterLogo(size: 96),
          _buildBaslik(context),
          _buildYaziyiDegistirButton(context),
          YonlendirmeButonu(),
          _buildRenkDegistirButton(context),
          _buildChechBox(context),
        ],
      ),
    );
  }

  Widget _buildBaslik(BuildContext context) {
    print("Başlık oluşturuldu");

    return Consumer<BirinciViewModel>(
      builder: (context, viewModel, child) {
        print("Başlık -consumer oluşturuldu");
        return Text(viewModel.yazi, style: TextStyle(fontSize: 28));
      },
    );
  }

  Widget _buildYaziyiDegistirButton(BuildContext context) {
    print("Yazıyı değiştir butonu oluşturuldu");
    BirinciViewModel viewModel = Provider.of<BirinciViewModel>(
      context,
      listen: false,
    );
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          viewModel.yazi = "Butona Tıklandı";
        },
        child: Text("Yazıyı Değiştir"),
      ),
    );
  }

  Widget _buildRenkDegistirButton(BuildContext context) {
    print("Renk değiştir butonu oluşturuldu");
    BirinciViewModel viewModel = Provider.of<BirinciViewModel>(
      context,
      listen: false,
    );
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          viewModel.renk = Colors.green;
        },
        child: Text("Renk Değiştir"),
      ),
    );
  }

  Widget _buildChechBox(BuildContext context) {
    print("CheckBox Oluşturuldu");
    //  BirinciViewModel viewModel = Provider.of<BirinciViewModel>(
    //     context,
    //     listen: false,
    //   );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('CheckBox', style: TextStyle(fontSize: 18)),
        Consumer<BirinciViewModel>(
          builder: (context, viewModel, child) {
            print("CheckBox - consumer Oluşturuldu");
            return Checkbox(
              value: viewModel.checkboxSecilimi,
              onChanged: (bool? yeniDeger) {
                if (yeniDeger != null) viewModel.checkboxSecilimi = yeniDeger;
              },
            );
          },
        ),
      ],
    );
  }
}