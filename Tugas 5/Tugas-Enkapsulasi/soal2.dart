import 'lingkaran.dart';

void main(List<String> args) {
  Lingkaran hitungLingkaran;
  double luasLingkaran;

  hitungLingkaran = new Lingkaran();
  hitungLingkaran.setJariJari(17);
  luasLingkaran = hitungLingkaran.getLuas();
  print("Luas Lingkaran = ${luasLingkaran} cm");
}
