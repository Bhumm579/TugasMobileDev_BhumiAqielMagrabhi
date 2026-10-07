class MakananModel {
  String namaMakanan;
  String hargaMakanan;
  String deskripsiMakanan;
  String gambarMakanan;
  String reviewMakanan;
  int ratingMakanan = 0;

  //constructor so the variable just need to be assigned once when creating the object
  MakananModel({
    required this.namaMakanan,
    required this.hargaMakanan,
    required this.deskripsiMakanan,
    required this.gambarMakanan,
    required this.reviewMakanan,
    required this.ratingMakanan,
  });
}
