import 'package:flutter/material.dart';

class DetailProduk extends StatelessWidget {
  final Map<String, dynamic> item;

  const DetailProduk({super.key, required this.item});

  static const Map<String, String> deskripsiProduk = {
    'Parfum':
        'Parfum dengan aroma segar dan tahan lama sepanjang hari. Wangi lembut yang cocok dipakai untuk aktivitas harian maupun acara spesial.',
    'Body Lotion':
        'Lotion yang melembapkan kulit tubuh secara intens, membuat kulit terasa halus, lembut, dan harum seharian. Teksturnya ringan dan cepat meresap.',
    'Body Scrub':
        'Scrub tubuh yang membantu mengangkat sel kulit mati dan kotoran, sehingga kulit tampak lebih cerah, halus, dan segar.',
    'Perfumed Shower Serum':
        'Serum mandi dengan kandungan pelembap dan wangi mewah. Membersihkan sekaligus menjaga kulit tetap lembap setelah mandi.',
    'Body Serum':
        'Serum tubuh berformula ringan untuk membantu mencerahkan dan menutrisi kulit, sehingga tampak sehat dan glowing.',
    'Intense Brightening AHA Body Booster':
        'Body booster dengan kandungan AHA yang membantu eksfoliasi dan mencerahkan area tubuh yang kusam secara bertahap.',
    'Ultra Light Daily Sunscreen':
        'Tabir surya bertekstur sangat ringan untuk melindungi kulit dari sinar UV setiap hari. Tidak lengket dan nyaman dipakai.',
    'Hair Conditioner':
        'Kondisioner yang membantu melembutkan rambut, mengurangi kusut, dan membuat rambut terasa halus serta mudah diatur.',
    'Brightly Ever After Serum':
        'Serum wajah yang membantu mencerahkan kulit, menyamarkan noda hitam, dan membuat wajah tampak lebih segar dan bercahaya.',
    '7X Ceramide Moisturizer':
        'Pelembap dengan 7 jenis ceramide yang membantu memperkuat skin barrier dan menjaga kelembapan kulit sepanjang hari.',
  };

  @override
  Widget build(BuildContext context) {
    final String nama = item['nama'];
    final String harga = item['harga'];
    final String gambar = item['gambar'];
    final String deskripsi =
        deskripsiProduk[nama] ?? 'Deskripsi produk belum tersedia.';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Detail Produk Scarlet'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.pinkAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  gambar,
                  width: 260,
                  height: 260,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.image_not_supported,
                      size: 80,
                      color: Colors.grey,
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),

              Text(
                nama,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),

              Text(
                'Rp $harga',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                'Deskripsi Produk',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                deskripsi,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}