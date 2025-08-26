import 'dart:io';

void main() {
  String? name; //tambahkan tanda tanya agar bisa kosong
  int? usia;
  stdout.write("masukkan nama : "); //input nama
  name = stdin.readLineSync();
  stdout.write("masukkan nama : ");
  usia = int.parse(stdin.readLineSync()!);
  print(name);
  print(usia);
}
