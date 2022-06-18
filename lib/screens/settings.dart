import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smart_slide_rule/commons/widgets/drawer.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('このアプリの設定', style: Theme.of(context).textTheme.headline1),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
          ),
        ],
      ),
      drawer: appDrawer(),
      body: Text("Coming soon!"),
    );
  }
}
