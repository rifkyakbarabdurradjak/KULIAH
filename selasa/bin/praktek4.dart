import 'dart:io';

void main() {
  stdout.write("Masukkan angka (1-7): ");
  String? input = stdin.readLineSync();

  if (input != null) {
    int angka = int.parse(input);

    switch (angka) {
      case 1:
        print("Senin");
        break;
      case 2:
        print("Selasa");
        break;
      case 3:
        print("Rabu");
        break;
      case 4:
        print("Kamis");
        break;
      case 5:
        print("Jumat");
        break;
      case 6:
        print("Sabtu");
        break;
      case 7:
        print("Minggu");
        break;
      default:
        print("Angka harus antara 1 sampai 7!");
    }
  } else {
    print("Input tidak boleh kosong!");
  }
}
