import 'dart:io';

void faktorial(double number) {
  double result = 1;
  for (var i = 1; i <= number; i++) {
    result *= i;
    // print("i = $i");
    // print("result = $result");
  }
  print("Result: $result");
}

void main() {
  bool cont = true;

  while (cont == true) {
    print("-----------------");
    print("Faktorial");
    print("1. 10 \n2. 20 \n3. 30");
    stdout.write("Choose(1/2/3): ");
    int? n = int.parse(stdin.readLineSync()!);

    if (n == 1) {
      faktorial(10);
    } else if (n == 2) {
      faktorial(20);
    } else if (n == 3) {
      faktorial(30);
    } else {
      print("Try again");
    }

    stdout.write("\nContinue(y/n)? ");
    String? ans = stdin.readLineSync();

    if (ans == "y") {
      cont = true;
    } else if (ans == "n") {
      cont = false;
    } else {
      print("Your command is wrong. Time out.");
      break;
    }
  }
}
