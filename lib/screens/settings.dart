import 'dart:io';

import 'package:flutter/material.dart';
import 'package:formulas_ffi/formulas_ffi.dart';
import 'package:smart_slide_rule/commons/widgets/drawer.dart';

final Formulas = FormulasFfi();

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('このアプリの設定', style: Theme.of(context).textTheme.headline1),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Text(Formulas.add(1,1).toString()),
    );
  }
}
