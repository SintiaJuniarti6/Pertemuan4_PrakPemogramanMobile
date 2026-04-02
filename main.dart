import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pertemuan 4'), 
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: NumberScreen(),
      ),
    );
  }
}

class NumberScreen extends StatefulWidget {
  @override
  _NumberScreenState createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  String name = 'Gelas Putih';
  String photo = 'https://picsum.photos/id/30/367/267';
  
  // Harga diubah menjadi 50000
  int hargaSatuan = 50000; 
  int qty = 0;

  @override
  Widget build(BuildContext context) {
    // Menghitung total harga: jika qty 0, tetap tampilkan harga 1 barang (50000)
    // Jika qty lebih dari 0, kalikan harga satuan dengan qty.
    int totalHarga = hargaSatuan * (qty > 0 ? qty : 1);

    return Scaffold( 
      body: Column(
        children: [
          Card( 
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  
                  // --- EXPANDED PERTAMA (Kiri) ---
                  Expanded(
                    flex: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Image.network(
                          photo,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        // Menampilkan variabel totalHarga yang sudah dihitung
                        Text(
                          'Rp. $totalHarga', 
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ), 

                  // --- EXPANDED KEDUA (Kanan) ---
                  Expanded(
                    flex: 12, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Tombol Kurang
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (qty > 0) qty--; // Mencegah nilai minus
                            });
                          },
                        ),
                        
                        // Angka Qty
                        Text(
                          qty.toString(),
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        
                        // Tombol Tambah
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              qty++;
                            });
                          },
                        ),
                      ],
                    ), 
                  ), 

                ],
              ), 
            ), 
          ), 
        ],
      ), 
    ); 
  }
}