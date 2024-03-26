// Tugas String

/** 1.
void main() {
  var word = 'dart';
  var second = 'is';
  var third = 'awesome';
  var fourth = 'and';
  var fifth = 'I';
  var sixth = 'love';
  var seventh = 'it!';

  final sentence = word +
      ' ' +
      second +
      ' ' +
      third +
      ' ' +
      fourth +
      ' ' +
      fifth +
      ' ' +
      sixth +
      ' ' +
      seventh;

  print(sentence);
} */

/**  2.
void main() {
  var sentence = "I am going to be Flutter Developer";

  var exampleFirstWord = sentence[0];
  var exampleSecondWord = sentence[2] + sentence[3];
  var thirdWord =
      sentence[5] + sentence[6] + sentence[7] + sentence[8] + sentence[9];
  var fourthWord = sentence[11] + sentence[12];
  var fifthWord = sentence[14] + sentence[15];
  var sixthWord = sentence[17] +
      sentence[18] +
      sentence[19] +
      sentence[20] +
      sentence[21] +
      sentence[22] +
      sentence[23];
  var seventhWord = sentence[25] +
      sentence[26] +
      sentence[27] +
      sentence[28] +
      sentence[29] +
      sentence[30] +
      sentence[31] +
      sentence[32] +
      sentence[33];

  print('First Word: ' + exampleFirstWord);
  print('Second Word: ' + exampleSecondWord);
  print('Third Word: ' + thirdWord);
  print('Fourth Word: ' + fourthWord);
  print('Fifth Word: ' + fifthWord);
  print('Sixth Word: ' + sixthWord);
  print('Seventh Word: ' + seventhWord);
} */

/** 3.
import 'dart:io';

void main(List<String> args) {
  print("masukan nama depan");
  String? namaDepan = stdin.readLineSync()!;

  print("masukan nama belakang");
  String? namaBelakang = stdin.readLineSync()!;

  print("nama lengkap anda adalah : ${namaDepan} ${namaBelakang}");
} */

// 4
void main() {
  var a = 5;
  var b = 10;

  final perkalian = a * b;
  final pembagian = a / b;
  final penambahan = a + b;
  final pengurangan = a - b;

  print("perkalian = ${perkalian}");
  print("pembagian = ${pembagian}");
  print("penambahan = ${penambahan}");
  print("pengurangan = ${pengurangan}");
}
