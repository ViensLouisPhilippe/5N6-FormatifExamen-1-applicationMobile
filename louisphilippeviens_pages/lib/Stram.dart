//NAVIGATION BAR
import 'package:flutter/material.dart';
import 'package:louisphilippeviens_ages/Am.dart';

import 'navigationbar.dart';

class Stram extends StatelessWidget {
  const Stram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
          backgroundColor: const Color(0xD1BAFDFF),
          title: const Text('Stram')
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Am(),
          ),
        ); },
        child: const Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
