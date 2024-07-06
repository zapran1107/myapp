import 'package:flutter/material.dart';
import 'package:myapp/screen/detailbola_screen.dart';

class ListBolaScreen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Persib Bandung",
      "kota": "Bandung",
      "image": "assets/images/persib.jpg",
      "gallery": [
        "assets/images/persib1.jpg",
        "assets/images/persib2.jpg",
        "assets/images/persib3.jpg"
      ],
      "desc": "sebuah tim sepak bola Indonesia yang berdiri pada 14 Maret 1933, klub ini berbasis di Bandung, Jawa Barat. "
    },
    {
      "nama": "Persija Jakarta",
      "kota": "Jakarta",
      "image": "assets/images/persija1.jpeg",
      "gallery": [
        "assets/images/persija1.jpeg",
        "assets/images/persija2.jpg",
        "assets/images/persija3.jpg"
      ],
      "desc": "klub sepak bola profesional Indonesia yang berbasis di Jakarta, Indonesia. Klub ini didirikan pada 28 November 1928 dengan nama Voetbalbond Boemipoetera. Klub ini terkenal dengan julukan Macan Kemayoran."
    },
    {
      "nama": "Bali United",
      "kota": "Bali",
      "image": "assets/images/logobali.jpg",
      "gallery": [
        "assets/images/bali1.jpg",
        "assets/images/bali2.jpeg",
        "assets/images/bali3.jpeg"
      ],
      "desc": "merupakan klub sepak bola profesional Indonesia yang berbasis di Kabupaten Gianyar, Bali.Klub ini sebelumnya bernama Putra Samarinda dari Galatama."
    },
    {
      "nama": "borussia dortmund",
      "kota": "German",
      "image": "assets/images/bvb.jpg",
      "gallery": [
        "assets/images/bvb1.jpeg",
        "assets/images/bvb4.jpeg",
        "assets/images/bvb1.jpeg"
      ],
      "desc": "bukan saja sebuah klub sepak bola, tetapi juga klub untuk bola tangan wanita dan tenis meja putra."
    },
    {
      "nama": "Manchester United",
      "kota": "inggirs",
      "image": "assets/images/mu1.jpg",
      "gallery": [
        "assets/images/mu2.jpeg",
        "assets/images/mu3.jpeg",
        "assets/images/mu4.jpg"
      ],
      "desc": " klub sepak bola profesional yang berbasis di Old Trafford, Manchester Raya, yang bermain di Liga Utama Inggris dengan gelar Liga Utama Inggris terbanyak sepanjang masa."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Club Bola'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: wisataData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailBolaScreen(
                        nama: wisataData[index]["nama"],
                        kota: wisataData[index]["kota"],
                        image: wisataData[index]["image"],
                        gallery: wisataData[index]["gallery"],
                        desc: wisataData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(wisataData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    wisataData[index]["nama"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}