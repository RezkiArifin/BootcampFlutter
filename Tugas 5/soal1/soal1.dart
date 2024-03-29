void main(List<String> args) {
  segitiga hitungSegitiga;
  double luasSegitiga;

  hitungSegitiga = new segitiga();
  hitungSegitiga.setengah = 0.5;
  hitungSegitiga.alas = 20.0;
  hitungSegitiga.tinggi = 30.0;
  luasSegitiga = hitungSegitiga.hitungLuas();
  print("Luas Segitiga = ${luasSegitiga} cm");
}

class segitiga {
  double? setengah;
  double? alas;
  double? tinggi;

  double hitungLuas() {
    return this.setengah! * alas! * tinggi!;
  }
}
