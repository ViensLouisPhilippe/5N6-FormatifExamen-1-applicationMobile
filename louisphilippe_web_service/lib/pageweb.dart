import 'package:flutter/material.dart';
import 'package:louisphilippe_web_service/service.dart';

class PageWeb extends StatelessWidget {
  const PageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xD1BAFDFF),
        title: const Text('Recherche d\'artiste'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recherche'),
          TextField()
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await getRechercheArtiste("jean");
        },
        tooltip: 'Increment',
        child: const Icon(Icons.search),
      ),
    );

  }

}