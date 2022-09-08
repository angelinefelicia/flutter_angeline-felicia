import 'dart:io';
import 'hewan.dart';
import 'mobil.dart';

// Add Hewan
Hewan anjing = Hewan(25);
Hewan beruang = Hewan(80);
Hewan kelinci = Hewan(3);
Hewan kucing = Hewan(5);
Hewan serigala = Hewan(30);

// Add Mobil
Mobil agya = Mobil(50);
Mobil avanza = Mobil(100);
Mobil innova = Mobil(200);

bool next = true;

void main() {
  print("\n--List of Hewan--");
  print("(Nama Hewan - Berat Badan)\n");
  print("1. Anjing - 25 kg");
  print("2. Beruang - 80 kg");
  print("3. Kelinci - 3 kg");
  print("4. Kucing - 5 kg");
  print("5. Serigala - 30 kg");

  print("\n--List of Mobil--");
  print("(Nama Mobil - Kapasitas Maksimum)\n");
  print("1. Agya - 50 kg");
  print("2. Avanza - 100 kg");
  print("3. Innova - 200 kg");

  stdout.write("\nPilih mobil (1/2/3): ");
  int? m = int.parse(stdin.readLineSync()!);

  if (m == 1) {
    while (next == true) {
      stdout.write("\nPilih hewan untuk dimasukkan ke mobil (1/2/3/4/5): ");
      int? h = int.parse(stdin.readLineSync()!);

      if (h == 1) {
        pengecekan(agya, anjing);
      } else if (h == 2) {
        pengecekan(agya, beruang);
      } else if (h == 3) {
        pengecekan(agya, kelinci);
      } else if (h == 4) {
        pengecekan(agya, kucing);
      } else if (h == 5) {
        pengecekan(agya, serigala);
      } else {
        print("Pilihan tidak valid");
      }
    }
  } else if (m == 2) {
    while (next == true) {
      stdout.write("\nPilih hewan untuk dimasukkan ke mobil (1/2/3/4/5): ");
      int? h = int.parse(stdin.readLineSync()!);

      if (h == 1) {
        pengecekan(avanza, anjing);
      } else if (h == 2) {
        pengecekan(avanza, beruang);
      } else if (h == 3) {
        pengecekan(avanza, kelinci);
      } else if (h == 4) {
        pengecekan(avanza, kucing);
      } else if (h == 5) {
        pengecekan(avanza, serigala);
      } else {
        print("Pilihan tidak valid");
      }
    }
  } else if (m == 3) {
    while (next == true) {
      stdout.write("\nPilih hewan untuk dimasukkan ke mobil (1/2/3/4/5): ");
      int? h = int.parse(stdin.readLineSync()!);

      if (h == 1) {
        pengecekan(innova, anjing);
      } else if (h == 2) {
        pengecekan(innova, beruang);
      } else if (h == 3) {
        pengecekan(innova, kelinci);
      } else if (h == 4) {
        pengecekan(innova, kucing);
      } else if (h == 5) {
        pengecekan(innova, serigala);
      } else {
        print("Pilihan tidak valid");
      }
    }
  } else {
    print("Pilihan tidak valid!\n");
  }
}

void pengecekan(Mobil mobil, Hewan hewan) {
  if (mobil.kapasitas > hewan.berat) {
    tambahHewan(mobil, hewan);
  } else {
    print("Hewan terlalu berat untuk dimasukkan!");
  }
}

void tambahHewan(Mobil mobil, Hewan hewan) {
  mobil.tambahMuatan(hewan);

  if (mobil.full == true) {
    next = false;
    double total = mobil.totalMuatan();
    print("Total Muatan Mobil: $total \n");
  }
}
