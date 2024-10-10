import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigationbar.dart';

class Am extends StatefulWidget {
  const Am({super.key});

  @override
  _AmState createState() => _AmState();
}

class _AmState extends State<Am> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: const Color(0xD1BAFDFF),
        title: const Text('Am')
      ),
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 6,
                  child : Container(
                    color: Colors.blue,
                  )
              ),
              Expanded(
                flex: 1,
                  child : Container(
                    color: Colors.green,
                  )
              ),
              Container(
                  child : Container(
                    color: Colors.yellow,
                    height: 222,
                    width: 222,
                  )
              ),
              Expanded(
                flex: 3,
                  child : Container(
                    color: Colors.red,
                  )
              ),
              Expanded(
                flex: 4,
                  child : Container(
                    color: Colors.orange,
                  )
              ),
            ],
          ),
    );
  }
}