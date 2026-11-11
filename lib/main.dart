import 'package:flutter/material.dart';

void main() {
  runApp(const KrishokHaatApp());
}

class KrishokHaatApp extends StatelessWidget {
  const KrishokHaatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'কৃষক হাট',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'HindSiliguri',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> products = const [
    {'name': 'তাজা টমেটো', 'price': '৪০ টাকা / কেজি', 'place': 'ঝিনাইদহ', 'emoji': '🍅'},
    {'name': 'দেশি আলু', 'price': '৩০ টাকা / কেজি', 'place': 'চাঁদপুর', 'emoji': '🥔'},
    {'name': 'পাকা আম', 'price': '১২০ টাকা / কেজি', 'place': 'রাজশাহী', 'emoji': '🥭'},
    {'name': 'ফুলকপি', 'price': '৩৫ টাকা / পিস', 'place': 'যশোর', 'emoji': '🥦'},
    {'name': 'দেশি মুরগির ডিম', 'price': '১৮০ টাকা / ডজন', 'place': 'কুষ্টিয়া', 'emoji': '🥚'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🌾 কৃষক হাট - সরাসরি কৃষকের থেকে'),
        backgroundColor: Colors.green[700],
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final p = products[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Text(p['emoji']!, style: const TextStyle(fontSize: 32)),
              title: Text(p['name']!, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text('${p['place']} • ${p['price']}'),
              trailing: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text('কিনুন', style: TextStyle(color: Colors.white)),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green[700],
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
