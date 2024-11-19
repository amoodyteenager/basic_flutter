import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShowListView(),
    );
  }
}

class ShowListView extends StatelessWidget {
  final List<String> nama = [
    "Kintani",
    "Rayola",
    "Fauzana",
    "David Iztanbul",
    "Elsa Pitaloka"
  ];

  final List<String> album = [
    "Apocalypse",
    "Cigarettes after sex",
    "Janji ka janji",
    "Minang Bana",
    "Rancak Bana"
  ];

  ShowListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Music Minang"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          // Show a specific image after the "David Iztanbul" item
          if (index == 4) {
            return Column(
              children: [
                Card(
                  child: ListTile(
                    title:
                        Text(nama[index], style: const TextStyle(fontSize: 30)),
                    subtitle: Text('Album: ${album[index]}'),
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://awsimages.detik.net.id/community/media/visual/2023/06/21/buzz-dan-woody-reuni-di-toy-story-5.jpeg?w=1200'),
                      radius: 30,
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Card(
              child: ListTile(
                title: Text(nama[index], style: const TextStyle(fontSize: 30)),
                subtitle: Text('Nama Album: ${album[index]}'),
                leading: CircleAvatar(
                  child: Text(nama[index][0],
                      style: const TextStyle(fontSize: 20)),
                ),
              ),
            );
          }
        },
        separatorBuilder: (context, index) {
          if (index == 3) {
            return Container(
              padding: const EdgeInsets.all(10),
              child: Image.network(
                  'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/padek/2022/09/1663358215800.jpg'),
            );
          } else {
            return const Divider();
          }
        },
        itemCount: nama.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
