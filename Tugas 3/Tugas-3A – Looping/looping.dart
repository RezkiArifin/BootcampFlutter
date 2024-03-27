/**1
void main() {
  var i = 1;

  print("LOOPING PERTAMA");
  while (i <= 20) {
    while (i % 2 == 0) {
      print(i.toString() + " - I love coding");
      i++;
    }
    i++;
  }

  var x = 20;

  print("LOOPING KEDUA");
  while (x > 0) {
    while (x % 2 == 0) {
      print(x.toString() + " - I will become a mobile developer");
      x--;
    }
    x--;
  }
}
*/

/**2
import 'dart:io';

void main() {
  for (var i = 1; i <= 20; i++) {
    if (i % 2 != 0 && i % 3 != 0) {
      print(i.toString() + " - Santai");
    } else if (i % 2 == 0) {
      print(i.toString() + " - Berkualitas");
    } else {
      print(i.toString() + " - I Love Coding");
    }
  }
}*/

/*3
void main() {
  int panjang = 8;
  int lebar = 4;

  for (int i = 1; i <= lebar; i++) {
    for (int x = 1; x <= panjang; x++) {
      stdout.write("#");
    }
    stdout.write('\n');
  }
}
*/

//4
import 'dart:io';

void main() {
  int tinggi = 7;

  for (int i = 1; i <= tinggi; i++) {
    for (int x = 1; x <= i; x++) {
      stdout.write("#");
    }
    stdout.write('\n');
  }
}
