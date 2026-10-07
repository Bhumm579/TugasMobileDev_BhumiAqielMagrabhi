import '../models/makanan_model.dart';

import 'package:get/get.dart';

class ListMakananController extends GetxController {
  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: 'Nasi Goreng',
      hargaMakanan: 'Rp 15.000',
      deskripsiMakanan: 'Nasi goreng dengan telur dan sayuran',
      gambarMakanan: 'https://images.unsplash.com/photo-1603133872878-684f208fb84b?auto=format&fit=crop&w=1920&q=80',
      reviewMakanan: 'Enak dan lezat, cocok untuk sarapan',
      ratingMakanan: 4,
    ),

    MakananModel(
      namaMakanan: 'Mie Goreng',
      hargaMakanan: 'Rp 12.000',
      deskripsiMakanan: 'Mie goreng dengan bumbu spesial',
      gambarMakanan: 'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?auto=format&fit=crop&w=1920&q=80',
      reviewMakanan: 'Mie goreng ini pedas dan gurih',
      ratingMakanan: 3,
    ),

    MakananModel(
      namaMakanan: 'Ayam Bakar',
      hargaMakanan: 'Rp 20.000',
      deskripsiMakanan: 'Ayam bakar dengan saus lezat',
      gambarMakanan: 'https://images.unsplash.com/photo-1532550907401-a500c9a57435?auto=format&fit=crop&w=1920&q=80',
      reviewMakanan: 'Ayam bakarnya empuk dan juicy',
      ratingMakanan: 4,
    ),

    MakananModel(
      namaMakanan: 'Sate Ayam',
      hargaMakanan: 'Rp 18.000',
      deskripsiMakanan: 'Sate ayam dengan sambal pedas',
      gambarMakanan: 'https://images.unsplash.com/photo-1529563021893-cc83c992d75d?auto=format&fit=crop&w=1920&q=80',
      reviewMakanan: 'Sate ayamnya manis dan gurih',
      ratingMakanan: 5,
    ),

    MakananModel(
      namaMakanan: 'Bakso',
      hargaMakanan: 'Rp 10.000',
      deskripsiMakanan: 'Bakso daging sapi dengan kuah hangat',
      gambarMakanan: 'https://images.unsplash.com/photo-1601050690597-df0568f70950?auto=format&fit=crop&w=1920&q=80',
      reviewMakanan: 'Baksonya kenyal dan kuahnya gurih',
      ratingMakanan: 4,
    ),
  ];
}
