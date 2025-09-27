import 'dart:io';

void main() {
  // Data mahasiswa (minimal 10)
  List<Map<String, String>> mahasiswa = [
    {
      "nim": "001",
      "nama": "Akbar",
      "jurusan": "Informatika",
      "angkatan": "2023"
    },
    {
      "nim": "002",
      "nama": "Nurlitha",
      "jurusan": "Sistem Informasi",
      "angkatan": "2023"
    },
    {
      "nim": "003",
      "nama": "Naufal",
      "jurusan": "Manajemen",
      "angkatan": "1945"
    },
    {"nim": "004", "nama": "Bayu", "jurusan": "Akuntansi", "angkatan": "2023"},
    {
      "nim": "005",
      "nama": "William",
      "jurusan": "Informatika",
      "angkatan": "1998"
    },
    {"nim": "006", "nama": "Fajar", "jurusan": "Hukum", "angkatan": "2010"},
    {
      "nim": "007",
      "nama": "Riko",
      "jurusan": "Informatika",
      "angkatan": "2021"
    },
    {"nim": "008", "nama": "Tegar", "jurusan": "Ekonomi", "angkatan": "2020"},
    {"nim": "009", "nama": "Carlo", "jurusan": "Psikologi", "angkatan": "2022"},
    {"nim": "010", "nama": "Joko", "jurusan": "Pertanian", "angkatan": "2021"},
  ];

  stdout.write("Cari mahasiswa (NIM atau Nama): ");
  String cari = stdin.readLineSync()!.toLowerCase();

  bool ketemu = false;
  for (var m in mahasiswa) {
    if (m["nim"]!.toLowerCase() == cari || m["nama"]!.toLowerCase() == cari) {
      print("\n=== Detail Mahasiswa ===");
      print("NIM      : ${m["nim"]}");
      print("Nama     : ${m["nama"]}");
      print("Jurusan  : ${m["jurusan"]}");
      print("Angkatan : ${m["angkatan"]}");
      ketemu = true;
      break;
    }
  }

  if (!ketemu) {
    print("Mahasiswa tidak ditemukan.");
  }
}
