import 'dart:io';

class RumusPersegiPanjang {
  double panjang;
  double lebar;

  void rumusHasilPP() {
    print("Menghitung Luas Persegi Panjang");
    stdout.write("Masukkan Panjang: ");
    panjang = double.parse(stdin.readLineSync());
    stdout.write("Masukkan Lebar: ");
    lebar = double.parse(stdin.readLineSync());
    print("Hasil Luas Persegi Panjang adalah ${this.panjang * this.lebar}");
  }
}

class RumusTrapesium {
  double sisi;
  double tinggi;

  void rumusHasilTrapesium() {
    print("Menghitung Luas Trapesium");
    stdout.write("Masukkan Sisi: ");
    sisi = double.parse(stdin.readLineSync());
    stdout.write("Masukkan Tinggi: ");
    tinggi = double.parse(stdin.readLineSync());
    print("Hasil Luas Trapesium adalah ${0.5 * (sisi + sisi) * tinggi}");
  }
}

class RumusJajarGenjang {
  double alas;
  double tinggi;

  void rumusHasilJajarGenjang() {
    print("Menghitung Luas Jajar Genjang");
    stdout.write("Masukkan Alas: ");
    alas = double.parse(stdin.readLineSync());
    stdout.write("Masukkan Tinggi: ");
    tinggi = double.parse(stdin.readLineSync());
    print("Hasil Luas Jajar Genjang adalah ${this.alas * this.tinggi}");
  }
}

void main() {
  var pilihan;
  var hasilPersegiPanjang = RumusPersegiPanjang();
  var hasilTrapesium = RumusTrapesium();
  var hasilJajarGenjang = RumusJajarGenjang();
  var jawaban;

  do {
    print("1. Hitung Luas Persegi Panjang");
    print("2. Hitung Luas Trapesium");
    print("3. Hitung Luas Jajar Genjang");

    stdout.write("Pilih : ");
    pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        hasilPersegiPanjang.rumusHasilPP();
        break;

      case '2':
        hasilTrapesium.rumusHasilTrapesium();
        break;

      case '3':
        hasilJajarGenjang.rumusHasilJajarGenjang();
        break;

      default:
        print("Pilihan tidak sesuai");
    }
    stdout.write("Ingin mengulang? (y/n) ");
    jawaban = stdin.readLineSync();
  } while (jawaban == 'Y' || jawaban == 'y');
}
