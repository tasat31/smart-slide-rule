import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_slide_rule/commons/widgets/drawer.dart';
import 'package:smart_slide_rule/models/link_budget.dart';

class LinkBudget extends StatelessWidget {
  const LinkBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('リンクバジェット', style: Theme.of(context).textTheme.headline1),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const <Widget>[
          Card(
            child: ListTile(
              title: Text('名称：実験用無線局'),
              subtitle: Text('周波数/電波の型式：80.0MHz F8E'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('送信電力(Pt)'),
              subtitle: Text('1.0W'),
              trailing: Text('30.0dBm'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('送信アンテナ利得'),
              subtitle: Text('ターンスタイルアンテナ'),
              trailing: Text('3.0dB'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('e.i.r.p'),
              subtitle: Text('ターンスタイルアンテナ'),
              trailing: Text('3.0dB'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('自由空間伝搬損失'),
              subtitle: Text('伝搬路長 10.0 km'),
              trailing: Text('-100.0dB'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('回折利得(損失)'),
              subtitle: Text('＊＊岳 E.L. 300m'),
              trailing: Text('3.0dB'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('受信アンテナ利得'),
              subtitle: Text('半波長ダイポールアンテナ'),
              trailing: Text('2.0dB'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('回線マージン'),
              trailing: Text('+5.0dB'),
            ),
          ),
        ],
      )
    );
  }
}
