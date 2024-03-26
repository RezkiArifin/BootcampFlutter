// Tugas Conditional

/** 1
import 'dart:io';

void main() {
  print("Apakah anda ingin menginstal aplikasi? (Y/T)");
  String? val = stdin.readLineSync()!.toLowerCase();
  String message = (val == "y")
      ? "Anda akan menginstall aplikasi dart"
      : (val == "t")
          ? "Aborted"
          : "";
  print(message);
} */

/**  2
import 'dart:io';

void main() {
  print("Masukkan Nama = ");
  String? nama = stdin.readLineSync()!;

  print("Masukkan Peran = ");
  String? peran = stdin.readLineSync()!;

  if (nama == "") {
    print("Nama harus diisi!");
  } else if (nama != "" && peran == "") {
    print("Halo ${nama}, Pilih peranmu untuk memulai game!");
  } else if (nama != "" && peran == "Penyihir") {
    print("Selamat datang di Dunia Werewolf, ${nama}");
    print(
        "Halo Penyihir ${nama}, kamu dapat melihat siapa yang menjadi werewolf!");
  } else if (nama != "" && peran == "Guard") {
    print("Selamat datang di Dunia Werewolf, ${nama}");
    print(
        "Halo Guard ${nama}, kamu akan membantu melindungi temanmu dari serangan werewolf.");
  } else if (nama != "" && peran == "Werewolf") {
    print("Selamat datang di Dunia Werewolf, ${nama}");
    print("Halo Werewolf ${nama}, Kamu akan memakan mangsa setiap malam!");
  } else {
    print("peran yang kamu pilih tidak terdaftar!");
  }
} */

/** 3
import 'dart:io';

void main() {
  String? day = stdin.readLineSync()!;
  switch (day) {
    case "senin":
      {
        print(
            'Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.');
        break;
      }
    case "selasa":
      {
        print(
            'Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.');
        break;
      }
    case "rabu":
      {
        print(
            'Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.');
        break;
      }
    case "kamis":
      {
        print(
            'Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.');
        break;
      }
    case "jumat":
      {
        print('Hidup tak selamanya tentang pacar.');
        break;
      }
    case "sabtu":
      {
        print('Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.');
        break;
      }
    case "minggu":
      {
        print(
            'Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.');
        break;
      }
    default:
      {
        print('Silahkan pilih hari');
      }
  }
} */

//4
void main() {
  var tanggal = 26;
  var bulan = 3;
  var tahun = 2024;
  String namaBulan;

  switch (bulan) {
    case 1:
      namaBulan = 'Januari';
      break;
    case 2:
      namaBulan = 'Februari';
      break;
    case 3:
      namaBulan = 'Maret';
      break;
    case 4:
      namaBulan = 'April';
      break;
    case 5:
      namaBulan = 'Mei';
      break;
    case 6:
      namaBulan = 'Juni';
      break;
    case 7:
      namaBulan = 'Juli';
      break;
    case 8:
      namaBulan = 'Agustus';
      break;
    case 9:
      namaBulan = 'September';
      break;
    case 10:
      namaBulan = 'Oktober';
      break;
    case 11:
      namaBulan = 'November';
      break;
    case 12:
      namaBulan = 'Desember';
      break;
    default:
      namaBulan = 'Bulan tidak valid';
  }

  print('$tanggal $namaBulan $tahun');
}
