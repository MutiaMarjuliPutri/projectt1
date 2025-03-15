import 'package:flutter/material.dart';

class DataDosen extends StatelessWidget {
  final List<Map<String, String>> dosenList = [
    {"gambar": "assets/dosen1.jpg", "nidn": "12345678", "nama": "Dr. Ahmad", "email": "ahmad@example.com"},
    {"gambar": "assets/dosen2.jpg", "nidn": "87654321", "nama": "Prof. Siti", "email": "siti@example.com"},
    {"gambar": "assets/dosen3.jpg", "nidn": "11223344", "nama": "Dr. Budi", "email": "budi@example.com"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Dosen")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: dosenList.length,
        itemBuilder: (context, index) {
          final dosen = dosenList[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(dosen["gambar"]!),
                radius: 30,
              ),
              title: Text(dosen["nama"]!, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("NIDN: ${dosen["nidn"]}"),
                  Text("Email: ${dosen["email"]}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
