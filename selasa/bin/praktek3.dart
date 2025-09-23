import 'dart:io';

void main() {
  print("=== Menu Operasi Matematika ===");
  print("1. Penjumlahan");
  print("2. Pengurangan");
  print("3. Perkalian");
  print("4. Pembagian");

  stdout.write("Pilih operasi (1-4): ");
  String? pilihan = stdin.readLineSync();

  if (pilihan != null) {
    int menu = int.parse(pilihan);

    stdout.write("Masukkan angka pertama: ");
    double angka1 = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan angka kedua: ");
    double angka2 = double.parse(stdin.readLineSync()!);

    double hasil;

    switch (menu) {
      case 1:
        hasil = angka1 + angka2;
        print("Hasil Penjumlahan: $hasil");
        break;
      case 2:
        hasil = angka1 - angka2;
        print("Hasil Pengurangan: $hasil");
        break;
      case 3:
        hasil = angka1 * angka2;
        print("Hasil Perkalian: $hasil");
        break;
      case 4:
        if (angka2 != 0) {
          hasil = angka1 / angka2;
          print("Hasil Pembagian: $hasil");
        } else {
          print("Error: Pembagian dengan nol tidak diperbolehkan!");
        }
        break;
      default:
        print("Pilihan tidak valid!");
    }
  } else {
    print("Input tidak boleh kosong!");
  }
}
