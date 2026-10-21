import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri Foto',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Galeri Foto'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16/9,
              child:Image(image: NetworkImage('https://picsum.photos/id/88/300/200'), 
              fit: BoxFit.cover),
            ),
            Container(
              alignment: Alignment.center,
              child: Text('Jalan di Barcelona', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              padding: EdgeInsets.all(10),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Divider(color: Colors.black),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.place, color: Colors.red),
                    Text('Lokasi: Barcelona, Spanyol'),
                  ]
                  ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.calendar_month, color: Colors.blue),
                    Text('publikasi: 13 Agustus 2013'),
                  ]
                  ),
                  Divider(color: Colors.black),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Deskripsi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.',textAlign: TextAlign.justify),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}