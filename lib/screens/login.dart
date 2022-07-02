// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_slide_rule/models/login.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var _LoginModel = Provider.of<LoginModel>(context);

    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'スマート計算尺',
                style: Theme.of(context).textTheme.headline1,
              ),
              TextFormField(
                onChanged: (text) {
                  _LoginModel.setUserName(text);
                },
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Username',
                  hintText: 'Username',
                ),
              ),
              TextFormField(
                onChanged: (text) {
                  _LoginModel.setPassword(text);
                },
                decoration: const InputDecoration(
                  icon: Icon(Icons.security),
                  labelText: 'Password',
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: const Text('Sign In'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
