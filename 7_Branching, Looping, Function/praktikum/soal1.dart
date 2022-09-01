import 'dart:io';

void result(int score) {
  if (score > 70) {
    print("Grade: A\n");
  } else if (score > 40) {
    print("Grade: B\n");
  } else if (score > 0) {
    print("Grade: C\n");
  } else {
    print(" \n");
  }
}

void main() {
  bool cont = true;

  while (cont == true) {
    print("-----------------");
    stdout.write("Score: ");
    int? n = int.parse(stdin.readLineSync()!);
    result(n);

    stdout.write("Continue(y/n)? ");
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
