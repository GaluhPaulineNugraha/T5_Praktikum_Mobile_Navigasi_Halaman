
import 'package:flutter/material.dart';

class DetailProduk extends StatelessWidget {
  final Map<String, dynamic> item;

  const DetailProduk({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final String nama = item['nama'];
    final String merek = item['merek'];
    final String harga = item['harga'];
    final String gambar = item['gambar'];
    final String deskripsi = item['deskripsi'];

    return Scaffold(
      backgroundColor: const Color(0xFFF1F3F6),
      appBar: AppBar(
        title: const Text(
          'DETAIL PRODUK',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
       backgroundColor: const Color.fromARGB(255, 75, 154, 202),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Card(
          color: Colors.white,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    gambar,
                    width: 260,
                    height: 260,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const SizedBox(
                        width: 260,
                        height: 260,
                        child: Icon(
                          Icons.smartphone,
                          size: 100,
                          color: Color(0xFF64748B),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  merek.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF64748B),
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  nama,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF172554),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Rp $harga',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF334155),
                  ),
                ),
                const SizedBox(height: 24),
                const Divider(color: Color(0xFFE2E8F0)),
                const SizedBox(height: 12),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Deskripsi Produk',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF172554),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  deskripsi,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 15,
                    height: 1.7,
                    color: Color(0xFF475569),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
