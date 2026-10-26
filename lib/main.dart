import 'package:flutter/material.dart';
import 'package:pert_2/halaman_maps.dart';

/// Nama: Ratu Qolbu Maziah
/// NRP: 152024151

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 60, 89, 232),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      home: const MyHomePage(title: 'Menu Aplikasi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
        child: Column(
          mainAxisAlignment: .start,
          children: [
            ColoredBox(
              color: Colors.green,
              child: Material(
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tileColor: const Color.fromARGB(224, 201, 244, 226),
                  leading: Icon(
                    Icons.add_circle,
                    size: 40,
                    color: Colors.green,
                  ),
                  subtitle: Text('Menu Pilihan'),
                  title: Text(
                    'Tambah Akun',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.green,
                  ),
                  onTap: () {},
                ),
              ),
            ),

            const SizedBox(height: 16),
            ColoredBox(
              color: Colors.green,
              child: Material(
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tileColor: const Color.fromARGB(225, 209, 234, 240),
                  leading: Icon(Icons.menu_book, size: 40, color: Colors.blue),
                  subtitle: Text('Menu Pilihan'),
                  title: Text(
                    'Tambah Buku',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.blue,
                  ),
                  onTap: () {},
                ),
              ),
            ),

            const SizedBox(height: 16),
            ColoredBox(
              color: Colors.pinkAccent,
              child: Material(
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tileColor: const Color.fromARGB(255, 248, 202, 241),
                  leading: Icon(Icons.map, size: 40, color: Colors.pinkAccent),
                  subtitle: Text('Menu Pilihan'),
                  title: Text(
                    'Maps',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.pinkAccent,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const HalamanMaps(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const HalamanMaps(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.pin_drop, size: 15, color: Colors.pinkAccent),
                      SizedBox(width: 10),
                      Text('Buka Maps'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
