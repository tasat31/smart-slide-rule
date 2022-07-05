// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smart_slide_rule/consts/menu_list.dart';
import 'package:smart_slide_rule/commons/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu', style: Theme.of(context).textTheme.headline1),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Navigator.pushNamed(context, '/settings'),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        children: MenuList.map((menu) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, menu['path']);
            },
            child: Center(
              child: Text(
                menu['title'],
                style: Theme.of(context).textTheme.headline6,
              ),
            )
          );
        }).toList()
      )
    );
  }
}
