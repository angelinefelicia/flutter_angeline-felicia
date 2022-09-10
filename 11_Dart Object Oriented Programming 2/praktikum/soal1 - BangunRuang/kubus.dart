import 'bangun_ruang.dart';

class Kubus extends BangunRuang {
  Kubus(this.sisi) : super(0.0, 0.0, 0.0);

  double sisi;

  @override
  double volume() {
    return sisi * sisi * sisi;
  }
}
