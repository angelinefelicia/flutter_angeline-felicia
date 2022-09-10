import 'dart:io';
import 'balok.dart';
import 'kubus.dart';

void main(List<String> args) {
  print("\n--Volume Bangun Ruang--");
  print("1. Kubus ");
  print("2. Balok ");
  print("0. Keluar");
  stdout.write("Pilih (1/2): ");
  int? n = int.parse(stdin.readLineSync()!);

  if (n == 1) {
    stdout.write("\nSisi: ");
    double? sisi = double.parse(stdin.readLineSync()!);

    Kubus kubus = Kubus(sisi);
    double volume = kubus.volume();

    print("Volume kubus: $volume");
    return main(args);
  } else if (n == 2) {
    stdout.write("\nPanjang: ");
    double? panjang = double.parse(stdin.readLineSync()!);

    stdout.write("Lebar: ");
    double? lebar = double.parse(stdin.readLineSync()!);

    stdout.write("Tinggi: ");
    double? tinggi = double.parse(stdin.readLineSync()!);

    Balok balok = Balok(panjang, lebar, tinggi);
    double volume = balok.volume();

    print("Volume balok: $volume");
    return main(args);
  } else if (n == 0) {
    exit(1);
  } else {
    print("Pilihan tidak valid!");
    return main(args);
  }
}
