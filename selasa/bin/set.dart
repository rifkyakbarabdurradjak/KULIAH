void main() {
  Set<int> angka = {1, 2, 3, 4, 5};
  print(angka);
  print(angka.length); //hitung ada brp angka di dalam angka
  print(angka.add(6)); //tambah angka
  print(angka.remove(1)); //hapus angka
  print(angka.contains(1)); //mengecek apakah angka 1 ada atau tidak
  angka.clear(); //menghapus angka
  print(angka);
  print(angka.runtimeType); //mengecek tipe data apa yang di gunakan
  print(angka.toList().runtimeType); //mengubah tipe data
}
