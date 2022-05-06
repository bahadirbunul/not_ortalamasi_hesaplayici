import 'package:dinamik_ortalama_hesapla/constants/app_constant.dart';
import 'package:flutter/cupertino.dart';

class OrtalamaGoster extends StatelessWidget {
  final double ortalama;
  final int dersSayisi;
  const OrtalamaGoster(
      {required this.dersSayisi, required this.ortalama, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          dersSayisi > 0 ? '$dersSayisi Ders Girildi' : 'Ders Seciniz',
          style: Sabitler.dersSayisiStyle,
        ),
        Text(
          ortalama >= 0 ? '${ortalama.toStringAsFixed(1)}' : '0.0',
          style: Sabitler.ortalamaStyle,
        ),
        Text(
          'Ortalama',
          style: Sabitler.ortalamaBodyStyle,
        ),
      ],
    );
  }
}
