//NAVIGATION BAR
import 'package:flutter/material.dart';
import 'package:louisphilippeviens_ages/Am.dart';

import 'Gram.dart';
import 'Stram.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Louis-Philippe Viens"),
            accountEmail: Text('2034421'),
          ),
          ListTile(
            leading: Icon(Icons.snowing),
            title: Text('Am'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Am(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Stram'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Stram(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.ad_units_outlined),
            title: Text('Gram'),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Gram(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
