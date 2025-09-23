import 'dart:io';

void main() {
  // Meminta input dari pengguna
  stdout.write("Masukkan umur: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    int umur = int.parse(input);

    // Menentukan kategori umur
    if (umur >= 0 && umur <= 12) {
      print("Kategori: Anak-anak");
    } else if (umur >= 13 && umur <= 17) {
      print("Anda termasuk kategori: Remaja");
    } else if (umur >= 18 && umur <= 59) {
      print("Anda termasuk kategori: Dewasa");
    } else if (umur >= 60) {
      print("Anda termasuk kategori: Lansia");
    } else {
      print("Umur tidak valid!");
    }
  } else {
    print("Input tidak boleh kosong!");
  }
}
