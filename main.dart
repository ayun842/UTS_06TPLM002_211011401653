import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Shoes',
      home: ShoesList(),
    );
  }
}

class ShoesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes List'),
      ),
      body: ListView(
        children: [
          ShoeCard(
            imageUrl: 'sepatu biru.png',
            shoeName: 'Nike SB Zoom Blazer',
            shoeBorder: 'Mid Premium',
            shoePrice: 'US 8.795',
          ),
          ShoeCard(
            imageUrl: 'sepatu coklat.png',
            shoeName: 'Nike Air Zoom Pengasus',
            shoeBorder: 'Mens Rood Running Shoes',
            shoePrice: 'US 9.999',
          ),
          ShoeCard(
            imageUrl: 'sepatu.png',
            shoeName: 'Nike Air Max',
            shoeBorder: 'Mens Running',
            shoePrice: 'US 8.999',
          ),
        ],
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String imageUrl;
  final String shoeName;
  final String shoeBorder;
  final String shoePrice;

  ShoeCard({
    required this.imageUrl,
    required this.shoeName,
    required this.shoeBorder,
    required this.shoePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          // Kolom pertama: Gambar
          Column(
            children: [
              Image.network(
                imageUrl,
                width: 100,
                height: 100,
              ),
            ],
          ),
          SizedBox(width: 16.0), // Jarak antara kolom
          // Kolom kedua: Nama dan harga
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                shoeName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                shoeBorder,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 94, 11, 76),
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                shoePrice,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 97, 92, 189),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
