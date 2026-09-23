import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasil = 0.obs;
  void tambah(double? angka1, double? angka2) {
    if (angka1 == null || angka2 == null) {
      print("Peringatan: Mohon isi semua angka dengan benar!");
    }
    else {
      double hasilTambah = angka1 +  angka2;
      hasil.value = hasilTambah.round();
    }
  }

  void kurang(double? angka1, double? angka2) {
    if (angka1 == null || angka2 == null) {
      print("Peringatan: Mohon isi semua angka dengan benar!");
    }
    else {
      double hasilKurang = angka1 - angka2;
      hasil.value = hasilKurang.round();
    }
  }

  void kali(double? angka1, double? angka2) {
    if (angka1 == null || angka2 == null) {
      print("Peringatan: Mohon isi semua angka dengan benar!");
    }
    else {
      double hasilKali = angka1 * angka2;
      hasil.value = hasilKali.round();
    }
  }

  void bagi(double? angka1, double? angka2) {
    if (angka1 == null || angka2 == null) {
      print("Peringatan: Mohon isi semua angka dengan benar!");
    }
    else if (angka2 == 0) {
      print("Peringatan: Tidak bisa membagi dengan angka nol!");
    }
    else {
      double hasilBagi = angka1 / angka2;
      hasil.value = hasilBagi.round();
    }
  }
}
