//NAVIGATION BAR
import 'package:flutter/material.dart';

import 'Am.dart';

class Gram extends StatelessWidget {
  const Gram({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      body: Center(
        child: Container(
          color: Colors.orange,
          width: 300,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Gram'),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Am()),
                  );
                },
                child: const Text('Retour vers Am', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        )
      ),
    );
  }
}
