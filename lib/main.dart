
import 'package:flutter/material.dart';
import 'DetailProduk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nuhun store.com',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'nama': 'Samsung Galaxy A55 5G',
        'merek': 'Samsung',
        'harga': '5.499.000',
        'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfBtRFS1kJYXUOybqVOngcEzDSpZsA_W-fN1XsQtgbsg&s=10',
        'deskripsi': 'Samsung Galaxy A55 5G memiliki layar Super AMOLED 6,6 inci, kamera utama 50 MP, dan baterai 5.000 mAh. Cocok untuk aktivitas sehari-hari dan hiburan.'
      },
      {
        'nama': 'iPhone 15',
        'merek': 'Apple',
        'harga': '10.499.000',
        'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM3GbLyxnMMg4Qa4JwmhFpJsXNHT41I7b4JAo4JR6_3w&s=10',
        'deskripsi': 'iPhone 15 hadir dengan layar Super Retina XDR, kamera utama 48 MP, dan chip A16 Bionic untuk mendukung aktivitas, fotografi, serta hiburan.'
      },
      {
        'nama': 'OPPO Reno12 5G',
        'merek': 'OPPO',
        'harga': '5.999.000',
        'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBvGIwo-O8w1TZCvevHr--knumwn_D_rLP_H1nfVByUA&s=10',
        'deskripsi': 'OPPO Reno12 5G menawarkan layar AMOLED, kamera dengan dukungan AI, serta pengisian daya cepat. Cocok untuk pengguna yang suka fotografi dan membuat konten.'
      },
      {
        'nama': 'vivo V40 5G',
        'merek': 'vivo',
        'harga': '6.499.000',
        'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA8yz92tfyY1SK7m3zTGTCutuT6QNN5OzA3d7wYv2h5A&s=10',
        'deskripsi': 'vivo V40 5G mengusung layar AMOLED, kamera dengan dukungan ZEISS, dan desain ramping. Pilihan menarik untuk fotografi dan penggunaan harian.'
      },
      {
        'nama': 'Xiaomi Redmi Note 13 Pro 5G',
        'merek': 'Xiaomi',
        'harga': '4.499.000',
        'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQevE2nPFw68DlFWREc8zFNhU_yvCOLktb3I0wnOnKpWg&s=10',
        'deskripsi': 'Redmi Note 13 Pro 5G memiliki layar AMOLED 1.5K, kamera utama 200 MP, dan dukungan jaringan 5G. Cocok untuk multimedia dan fotografi.'
      },
      {
        'nama': 'Infinix Note 40 Pro',
        'merek': 'Infinix',
        'harga': '3.299.000',
        'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfEdbE_x8UVwgDvXMPR6QkyFGaCKGNU11mW61DIQwRPA&s=10',
        'deskripsi': 'Infinix Note 40 Pro menawarkan layar AMOLED 120 Hz, kamera utama 108 MP, dan fitur pengisian daya nirkabel magnetik. Cocok untuk pengguna yang mencari fitur menarik dengan harga lebih terjangkau.'
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF1F3F6),
      appBar: AppBar(
        title: const Text(
          'NUHUN STORE',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 75, 154, 202),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            margin: const EdgeInsets.only(bottom: 12),
            elevation: 2,
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  products[index]['gambar'],
                  width: 65,
                  height: 65,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const SizedBox(
                      width: 65,
                      height: 65,
                      child: Icon(Icons.smartphone, size: 40),
                    );
                  },
                ),
              ),
              title: Text(
                products[index]['nama'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF172554),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  'Rp ${products[index]['harga']}',
                  style: const TextStyle(
                    color: Color(0xFF475569),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              trailing: const Icon(
                Icons.chevron_right,
                color: Color(0xFF172554),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailProduk(
                      item: products[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
