import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

Color color = Theme.of(context).primaryColor;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body : SingleChildScrollView(
        child : Column(
          children : [
            Image.asset('assets/images/gunungranaka.jpg'),
            titleSection,
            buttonSection,
            textSection, 
          ]
        ),
      ),
),
    );
  }
}

 Widget titleSection = Container(
  padding: const EdgeInsets.all(16.0),
  child: Row(
    children: [
      Expanded(
        /* soal 1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* soal 2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: const Text(
                'Wisata Gunung Ranakah',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Nusa Tenggara Timur, Indonesia',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /* soal 3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('41'),
    ],
  ),
);


Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Gunung Ranakah atau Poco Ranakah adalah gunung berapi yang terletak di bagian tengah selatan pulau Flores, Indonesia.'
    'Kubah lava tertingginya, Gunung Poco Mandasawu adalah gunung tertinggi di pulau ini. Kubah lava baru yang diberi nama "Anak Ranakah" terbentuk di sana pada tahun 1987.' 
    'Gunung berapi ini kembali meletus pada tahun 1991. Pada tahun 2011, gumpalan putih menyebar terlihat muncul dari Kubah Anak Ranakah, meskipun tidak terdeteksi adanya abu..\n\n'
    'Nama : Stefano Tessari Abur'
    
    'NIM : 362458302014\n'
    'Kelas : 2B TRPL\n',
    softWrap: true,
  ),
);