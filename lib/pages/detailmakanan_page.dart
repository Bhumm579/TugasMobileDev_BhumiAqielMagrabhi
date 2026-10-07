import 'package:flutter/material.dart';
import 'package:flutter_app_01/models/makanan_model.dart';

class DetailMakananPage extends StatelessWidget {
  final MakananModel makanan;

  DetailMakananPage({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Makanan')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar
              Image.network(
                makanan.gambarMakanan,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 15),

              // Nama makanan
              Text(
                makanan.namaMakanan,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // Rating
              Row(
                children: [
                  ...List.generate(
                    makanan.ratingMakanan,
                    (index) => const Icon(Icons.star, color: Colors.amber),
                  ),
                  const SizedBox(width: 5),
                  Text('${makanan.ratingMakanan}/5'),
                ],
              ),

              const SizedBox(height: 10),

              // Harga
              Text(
                makanan.hargaMakanan,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 20),

              // Deskripsi
              const Text(
                'Deskripsi',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 5),

              Text(
                makanan.deskripsiMakanan,
                style: const TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 20),

              // Review
              const Text(
                'Review',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 5),

              Text(
                makanan.reviewMakanan,
                style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
