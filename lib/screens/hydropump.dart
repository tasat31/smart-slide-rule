import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smart_slide_rule/commons/widgets/drawer.dart';

class Hydropump extends StatelessWidget {
  const Hydropump({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ポンプ排水量', style: Theme.of(context).textTheme.headline1),
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
