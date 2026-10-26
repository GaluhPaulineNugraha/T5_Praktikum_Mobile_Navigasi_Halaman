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
      title: 'Scarlet',
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
        'nama': 'Parfum',
        'harga': '50000',
        'gambar': 'https://id-test-11.slatic.net/p/b19ec5b3329eda4c62c2ce9d31c73ce5.jpg'
      },
      {
        'nama': 'Body Lotion',
        'harga': '40000',
        'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwkwKy4SrAW8lQ_ToZ38o5zG3i94Ds-_C5_buzboNQKg&s=10'
      },
      {
        'nama': 'Body Scrub',
        'harga': '57000',
        'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWOJ3r05HWH_-fnB4IqE8Z9oFUrek_TL8hMa-jhHrglQ&s=10'
      },
      {
        'nama': 'Perfumed Shower Serum',
        'harga': '75000',
        'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfZfM1GBj8siu3wTTQO7Rt9sLns1emq19zkUSJ_1Kwqw&s=10'
      },
      {
        'nama': 'Body Serum',
        'harga': '55000',
        'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7cDBkb6AQ-YTwE1YtqpmqFJI1_1-5gddprdwSNxIFHA&s=10'
      },
      {
        'nama': 'Intense Brightening AHA Body Booster',
        'harga': '45000',
        'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRki2hl-Z7WHmHV8AkE0LRIpPgO99_lFNhfo6En1gtm1g&s=10'
      },
      {
        'nama': 'Ultra Light Daily Sunscreen',
        'harga': '58000',
        'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKKT9mzc_c0Za0A92cPUJqLdcTJ0RHcHH1x92M4XtrsA&s=10'
      },
      {
        'nama': 'Hair Conditioner',
        'harga': '65000',
        'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG7GANUXeI6evuIOYHlL2gnIkHTTf2LrMDbEfgkHPCaQ&s=10'
      },
      {
        'nama': 'Brightly Ever After Serum',
        'harga': '60000',
        'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOPKeVbRFHRpvsZwnXxDdQ8eQ97Q9QzMrMvrK0Viy0Hw&s=10'
      },
      {
        'nama': '7X Ceramide Moisturizer',
        'harga': '70000',
        'gambar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUbsjVrDQHJNJhPNAXN9e8FhMsSaT2arj5-4alIp5kKw&s=10'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Produk Scarlett'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
              products[index]['gambar'],
              width: 60,
              height: 60,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.image_not_supported);
              },
            ),
            title: Text(products[index]['nama']),
            subtitle: Text('Rp ${products[index]['harga']}'),
            trailing: const Icon(Icons.chevron_right),
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
          );
        },
      ),
    );
  }
}