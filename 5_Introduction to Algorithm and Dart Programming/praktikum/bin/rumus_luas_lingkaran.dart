import 'dart:io';

void main() {
  // Rumus luas lingkaran menggunakan inputan user
  double phi = 3.14;

  // input r (jari-jari)
  print("\n------------------------");
  print("Jari-jari lingkaran:");
  int? r = int.parse(stdin.readLineSync()!);

  // print circle area
  double luas = phi * r * r;
  print("------------------------");
  print("Luas lingkaran: $luas \n");

  // Rumus luas lingkaran tanpa menggunakan inputan user
  // double phi = 3.14;
  // int r = 7;

  // double luas = phi * r * r;
  // print("Luas lingkaran: $luas");
}
