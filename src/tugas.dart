import 'dart:io';

void main() {
  print('=== Program Penghitung Gaji Karyawan ===');

  Map<String, dynamic> karyawan = {};

  stdout.write('Masukkan nama karyawan: ');
  karyawan['nama'] = stdin.readLineSync()!;

  stdout.write('Masukkan jumlah jam kerja per minggu: ');
  karyawan['jamKerja'] = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan upah per jam (Rp): ');
  karyawan['upahPerJam'] = double.parse(stdin.readLineSync()!);

  stdout.write('Masukkan status karyawan (tetap/kontrak): ');
  String statusInput = stdin.readLineSync()!.toLowerCase();
  karyawan['status'] = statusInput == 'tetap';

  double gajiKotor = karyawan['jamKerja'] * karyawan['upahPerJam'];

  double pajak = karyawan['status'] ? gajiKotor * 0.1 : gajiKotor * 0.05;

  double gajiBersih = gajiKotor - pajak;

  print('\n=== Hasil Perhitungan Gaji ===');
  print('Nama Karyawan: ${karyawan['nama']}');
  print('Status Karyawan: ${karyawan['status'] ? 'Tetap' : 'Kontrak'}');
  print('Gaji Kotor: Rp ${gajiKotor.toStringAsFixed(2)}');
  print(
      'Pajak (${karyawan['status'] ? '10%' : '5%'}): Rp ${pajak.toStringAsFixed(2)}');
  print('Gaji Bersih: Rp ${gajiBersih.toStringAsFixed(2)}');
}
