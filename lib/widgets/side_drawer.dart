import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          DrawerHeader(
            child: Container(
              alignment: Alignment.center,
              child: const Text('Task Manager'),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.create),
            title: Text('Create New Task'),
          ),
          const ListTile(
            leading: Icon(Icons.assignment),
            title: Text('Your Tasks'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
          const ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
          ),
        ],
      ),
    );
  }
}
