import 'hewan.dart';

class Mobil {
  Mobil(this.kapasitas);

  // total berat maksimum muatan
  double kapasitas;

  // data hewan yg jd muatan
  List<Hewan> muatan = [];

  // menghentikan penambahan muatan
  bool full = false;

  // menghitung muatan skrg
  double currentMuatan = 0;
  double temp = 0;

  // jika kapasitas cukup, maka tambah data hewan.
  void tambahMuatan(Hewan hewan) {
    temp += hewan.berat;

    if (kapasitas > temp) {
      muatan.add(hewan);
      currentMuatan += hewan.berat;
      print("Muatan mobil sekarang: $currentMuatan");
    } else {
      print("Melebihi kapasitas!");
      full = true;
    }
  }

  // hitung total muatan yg diangkut mobil
  double totalMuatan() {
    double totalBerat = 0;
    for (var hewan in muatan) {
      totalBerat += hewan.berat;
    }
    return totalBerat;
  }
}
