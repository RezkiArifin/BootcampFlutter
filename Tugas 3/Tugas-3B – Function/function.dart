/*1
void main() {
  print(teriak()); // "Halo Sanbers!"
}

teriak() {
  String teriak = "Halo Sanbers!";

  return teriak;
} */

/*2
void main() {
  kalikan(num1, num2) {
    int hasil = num1 * num2;
    return hasil;
  }

  var num1 = 12;
  var num2 = 4;

  var hasilKali = kalikan(num1, num2);
  print(hasilKali); // 48
} */

/*3
void main() {
  introduce(String name, int age, String address, String hobby) {
    return 'Nama saya ${name}, umur saya ${age} tahun, alamat saya di ${address}, dan saya punya hobby yaitu ${hobby}!';
  }

  final String name = "Achmad";
  final int age = 30;
  final String address = "Jln. Malioboro, Yogyakarta";
  final String hobby = "Gaming";

  final perkenalan = introduce(name, age, address, hobby);
  print(
      perkenalan); // Menampilkan "Nama saya Agus, umur saya 30 tahun, alamat saya di Jln. Malioboro, Yogyakarta, dan saya punya hobby yaitu Gaming!"
} */

//4
import 'dart:io';

void main() {
  angkaFaktorial(angka, faktorial) {
    if (angka > 0) {
      for (int i = 1; i <= angka; i++) {
        faktorial *= i;
      }
      String hasil = "faktorial dari $angka adalah $faktorial";
      return hasil;
    } else {
      return 1;
    }
  }

  int angka;
  int faktorial = 1;

  print("masukkan bilangan bulat: ");
  angka = int.parse(stdin.readLineSync()!);

  final hasilFaktorial = angkaFaktorial(angka, faktorial);
  print(hasilFaktorial);
}
