void main() {
  var input = [
    ["0001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["0002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
    ["0003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["0004", "Bintang Sanjaya", "Martapura", "6/4/1970", "Berkebun"],
  ];
  dataHandling(input);
}

void dataHandling(List<List<String>> input) {
  for (int i = 0; i < input.length; i++) {
    String id = input[i][0];
    String nama = input[i][1];
    String tempatLahir = input[i][2];
    String tanggalLahir = input[i][3];
    String hobi = input[i][4];

    print('Nomor ID : $id');
    print('Nama Lengkap : $nama');
    print('TTL : $tempatLahir $tanggalLahir');
    print('Hobi : $hobi\n');
  }
}
