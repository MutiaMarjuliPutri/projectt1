import 'package:flutter/material.dart';
import 'package:projek1/Screen/DetailDataDosen/page_detail_dosen.dart';


class PageDataDosen extends StatefulWidget {
  const PageDataDosen({super.key});

  @override
  State<PageDataDosen> createState() => _PageGridViewState();
}

class _PageGridViewState extends State<PageDataDosen> {
  //data list movie
  List<Map<String, dynamic>> listDosen = [
    {"nidn": "2301092032", "gambar": "gambar/dosen1.jpg", "nama": "mutia", "email": "mut@gmail.com"},
    {"nidn": "2301092033", "gambar": "gambar/dosen2.jpg", "nama": "marjuli", "email": "mrjl@gmail.com"},
    {"nidn": "2301092034", "gambar": "gambar/dosen3.jpg", "nama": "putri", "email": "ptr@gmail.com"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(0),
        child: GridView.builder(
          itemCount: listDosen.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.7
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => PageDetailDataDosen(listDosen[index])));
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRect(
                      child: Image.asset(
                        listDosen[index]["gambar"],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1,color: Colors.black)
                    ),
                    child: Column(
                      children: [
                        Text(listDosen[index]["nidn"],style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        Text(listDosen[index]["nama"],style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        Text(listDosen[index]["email"],style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),

                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}