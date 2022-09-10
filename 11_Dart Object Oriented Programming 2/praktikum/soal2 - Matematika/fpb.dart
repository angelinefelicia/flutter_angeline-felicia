import 'matematika.dart';

class FaktorPersekutuanTerbesar implements Matematika {
  FaktorPersekutuanTerbesar(this.x, this.y);

  int x;
  int y;

  @override
  int hasil() {
    while (x != y) {
      if (x > y) {
        x = x - y;
      } else {
        y = y - x;
      }
    }
    return x;
  }
}
