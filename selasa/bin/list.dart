void main() {
  List<String> buah = ['apel', 'mangga', 'pisang', 'jeruk'];
  print(buah);
  print(buah[0]);
  print(buah.first);
  buah.addAll(['semangka', 'pepaya']); //tambahkan lebih dari satu
  print(buah);
  print(buah.indexOf(buah[2] = 'mangga')); //ganti buah pada index ke 2
  print(buah);
}
