import 'dart:io';

class Konversi {
  void konversi(int desimal) {
    String biner = desimal.toRadixString(2);
    String oktal = desimal.toRadixString(8);
    String heksadesimal = desimal.toRadixString(16).toUpperCase();

    print('Hasil nilai biner: $biner');
    print('Hasil nilai oktal: $oktal');
    print('Hasil nilai heksadesimal: $heksadesimal');
  }
}
  void main() {
    Konversi konversi = Konversi();
    stdout.write('Masukkan bilangan desimal: ');
    int desimal = int.parse(stdin.readLineSync()!);
    konversi.konversi(desimal);
  }
