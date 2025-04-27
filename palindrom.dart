import 'dart:io';

class Palindrom {
  
  bool cekPalindrom(String str) {
    String cleanedStr = str.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    int length = cleanedStr.length;

    for (int i = 0; i < length ~/ 2; i++) {
      if (cleanedStr[i] != cleanedStr[length - 1 - i]) {
        return false;
      }
    }
    return true;
  }
}

void main() {
  Palindrom palindrom = Palindrom();
  stdout.write('Masukkan kalimat: ');
  String input = stdin.readLineSync()!;
  if (palindrom.cekPalindrom(input)) {
    print('Hasil: ${input.split('').reversed.join()}');
    print('$input adalah palindrom.');
  } else {
    print('Hasil: ${input.split('').reversed.join()}');
    print('$input bukan palindrom.');
  }
}