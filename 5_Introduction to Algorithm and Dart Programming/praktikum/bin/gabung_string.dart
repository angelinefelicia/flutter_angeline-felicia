import 'dart:io';

void main() {
  // Penggabungan 3 string menggunakan inputan user
  // input first word
  print("\n-------------------");
  print("Kata pertama:");
  String? kata1 = stdin.readLineSync();

  // input second word
  print("-------------------");
  print("Kata kedua:");
  String? kata2 = stdin.readLineSync();

  // input third word
  print("-------------------");
  print("Kata ketiga:");
  String? kata3 = stdin.readLineSync();

  print("-------------------");
  print("Hasil penggabungan ketiga kata:");
  print("$kata1 $kata2 $kata3 \n");

  // Penggabungan 3 string tanpa menggunakan inputan user
  // String kata1 = "Aku";
  // String kata2 = "sedang";
  // String kata3 = "belajar";

  // print("$kata1 $kata2 $kata3");
}
