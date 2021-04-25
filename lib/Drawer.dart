import 'package:flutter/material.dart';

class Drawer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        UserAccountsDrawerHeader(
            accountName: Text('Hamza Tarique'),
            accountEmail: Text('hamzatariquearain@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/originals/05/c0/71/05c0710f5dbc6ef45f8ae35ea198f652.jpg'),
            )),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Hamza Tarique'),
          subtitle: Text('Itian'),
          trailing: Icon(Icons.edit),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Tarique Hussain'),
          subtitle: Text('Teacher'),
          trailing: Icon(Icons.edit),
          onTap: () {},
        ),
      ]),
    );
  }
}
