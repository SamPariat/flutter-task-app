import 'package:flutter/material.dart';

import '../widgets/side_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Manager'),
      ),
      drawer: const SideDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              'Start managing your tasks',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Text(
              'Efficiency Amplified: Your Ultimate Task Manager',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
