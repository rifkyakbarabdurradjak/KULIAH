// try & catch
void main() {
  try {
    int number = 10 % 0;
    print(number);
  } catch (e) {
    print("terjadi eror : $e");
  }
}
