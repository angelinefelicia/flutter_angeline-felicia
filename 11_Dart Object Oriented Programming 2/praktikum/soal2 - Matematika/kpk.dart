import 'matematika.dart';

class KelipatanPersekutuanTerkecil implements Matematika {
  KelipatanPersekutuanTerkecil(this.x, this.y);

  int x;
  int y;

  @override
  int hasil() {
    int temp = 0;
    if (x > y) {
      do {
        temp = temp + y;
      } while (temp % x != 0);
    } else {
      do {
        temp = temp + x;
      } while (temp % y != 0);
    }
    return temp;
  }
}
