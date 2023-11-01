import 'package:flutter/material.dart';
import 'new_page.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Universitas Esa Unggul',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Tangerang, Indonesia',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.pinkAccent,
          ),
          const Text('4.5'),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.pinkAccent, Icons.call, 'CALL'),
        _buildButtonColumn(Colors.pinkAccent, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(Colors.pinkAccent, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Universitas Esa Unggul, atau disingkat UEU, adalah perguruan tinggi swasta yang didirikan pada tahun 1993 di Jakarta oleh Yayasan Pendidikan Kemala',
            softWrap: true,
          ),
          SizedBox(height: 16),
          Center(
            child: Material(
              color: Colors.pinkAccent, // Set the background color
              child: InkWell(
                onTap: () {
                  // Navigate to the NewPage when the "+" button is pressed
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewPage()));
                },
                child: Container(
                  padding: EdgeInsets.all(10), // Adjust padding as needed
                  child: Icon(Icons.navigate_next, color: Colors.white), // Set the icon color
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pertemuan 5',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text(
            'Pertemuan 5',
            style: TextStyle(
              color: Colors.black, // Set the text color
              fontSize: 20, // Set the text size
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Image.network(
              'https://sekawantriasa.com/wp-content/uploads/2021/08/Esa-Unggul-Tangerang.jpg',
              width: 800,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

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
}