import 'dart:io';
import 'fpb.dart';
import 'kpk.dart';

void main(List<String> args) {
  print("\n--KPK & FPB--");
  print("1. KPK ");
  print("2. FPB ");
  print("0. Keluar");
  stdout.write("Pilih (1/2): ");
  int? n = int.parse(stdin.readLineSync()!);

  if (n == 1) {
    stdout.write("\nx: ");
    int? x = int.parse(stdin.readLineSync()!);

    stdout.write("y: ");
    int? y = int.parse(stdin.readLineSync()!);

    KelipatanPersekutuanTerkecil kpk = KelipatanPersekutuanTerkecil(x, y);
    int hasil = kpk.hasil();

    print("KPK: $hasil");
    return main(args);
  } else if (n == 2) {
    stdout.write("\nx: ");
    int? x = int.parse(stdin.readLineSync()!);

    stdout.write("y: ");
    int? y = int.parse(stdin.readLineSync()!);

    FaktorPersekutuanTerbesar fpb = FaktorPersekutuanTerbesar(x, y);
    int hasil = fpb.hasil();

    print("FPB: $hasil");
    return main(args);
  } else if (n == 0) {
    exit(1);
  } else {
    print("Pilihan tidak valid!");
    return main(args);
  }
}
