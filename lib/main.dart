import 'package:flutter/material.dart';
import 'package:projek1/Screen/latihan_form/FromDosen.dart';
import 'package:projek1/Screen/latihan_yummy/page_splash_screen.dart';
import 'package:projek1/Screen/naf_bar/page_tab_bar.dart';
import 'package:projek1/Screen/page_cache.image.dart';
import 'package:projek1/Screen/page_dua.dart';
import 'package:projek1/Screen/page_gambar.dart';
import 'package:projek1/Screen/page_list_data.dart';
import 'package:projek1/Screen/page_notification.dart';
import 'package:projek1/Screen/page_satu.dart';
import 'package:projek1/Screen/page_simple_login.dart';
import 'package:projek1/Screen/page_tiga.dart';
import 'package:projek1/Screen/page_empat.dart';
import 'package:projek1/Screen/page_url_image.dart';
import 'Screen/DetailDataDosen/page_data_dosen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PageOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Aplikasi Pertama',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Selamat Datang di Flutter App pertama MI 2B Mutia"),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageSatu()));
              },
              color: Colors.purple,
              child: Text(
                'Page 1',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageDua()));
                },
                elevation: 18.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Color(0x7958089E),
                clipBehavior: Clip.antiAlias,
                child: Text(
                  'Page 2',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageTiga()));
              },
              color: Colors.purple,
              child: Text(
                'Page 3',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageEmpat()));
              },
              color: Colors.purple,
              child: Text(
                'Page 4',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageGambar()));
              },
              color: Colors.purple,
              child: Text(
                'Page gambar',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageUrlImage()));
              },
              color: Colors.purple,
              child: Text(
                'Page Url Image',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageChache()));
              },
              color: Colors.purple,
              child: Text(
                'Page cache image',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageNotif()));
              },
              color: Colors.purple,
              child: Text(
                'Page notification',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageListData()));
              },
              color: Colors.purple,
              child: Text(
                'Page list data',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => PageSimpleLogin()
              ));
            },
              color: Colors.purple,
              child: Text('Page Simple Login',
                  style: TextStyle(fontSize: 14, color: Colors.white)

              ),
            ),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => PageTabBar()
              ));
            },
              color: Colors.purple,
              child: Text('Page Tab Bar',
                  style: TextStyle(fontSize: 14, color: Colors.white)

              ),
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => FormDosen()
              ));
            },
              color: Colors.purple,
              child: Text('Form Dosen',
                  style: TextStyle(fontSize: 14, color: Colors.white)

              ),
            ),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => PageDataDosen()
              ));
            },
              color: Colors.purple,
              child: Text('Tab Data Dosen',
                  style: TextStyle(fontSize: 14, color: Colors.white)

              ),
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => SplashScreen()
              ));
            },
              color: Colors.purple,
              child: Text('Page Yummy Apps',
                  style: TextStyle(fontSize: 14, color: Colors.white)

              ),
            ),




          ],
        ),
      ),
    );
  }
}