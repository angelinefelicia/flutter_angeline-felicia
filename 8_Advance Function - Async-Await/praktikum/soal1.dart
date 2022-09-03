import 'dart:io';

Future<void> multiply(List data, int pengali) async {
  List temp = [];
  await Future.delayed(Duration(seconds: 1), () {
    for (var num in data) {
      temp.add(num * pengali);
    }
  });
  print("\nResult: $temp");
  print("------------------------");
}

void main() {
  List data = [1, 2, 3];
  print("------------------------");
  print("List of Data: [1, 2, 3]");
  stdout.write("Multiply by: ");
  int? pengali = int.parse(stdin.readLineSync()!);

  multiply(data, pengali);
}
