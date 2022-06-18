// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

/// A proxy of the catalog of items the user can buy.
///
/// In a real app, this might be backed by a backend and cached on device.
/// In this sample app, the catalog is procedurally generated and infinite.
///
/// For simplicity, the catalog is expected to be immutable (no products are
/// expected to be added, removed or changed during the execution of the app).
class CatalogModel {
  static List<String> itemNames = [
    'SS400 L 4x50x50(RAW)',
    'SS400 L 6x50x50(RAW)',
    'SS400 C 5x50x100(RAW)',
    'SS400 H 100x100x6x8(RAW)',
    'AL5052 L 6x40x40',
    'AL5052 L 6x60x60',
    'AL5052 PIPE 50A',
    'SUSTP 304 20A',
    'SUSTP 304 32A',
    'SUSTP 304 20A',
    'SUSTP 304 20A 45L',
    'SUSTP 304 32A 45L',
    'SUSTP 304 20A 45L',
    'SS B.N.W M8',
    'SUS B.N.W M8',
    'AL B.N.W M8',
  ];

  /// Get item by [id].
  ///
  /// In this sample, the catalog is infinite, looping over [itemNames].
  Item getById(int id) => Item(id, itemNames[id % itemNames.length]);

  /// Get item by its position in the catalog.
  Item getByPosition(int position) {
    // In this simplified case, an item's position in the catalog
    // is also its id.
    return getById(position);
  }
}

@immutable
class Item {
  final int id;
  final String name;
  final Color color;
  final int price = 42;

  Item(this.id, this.name)
      // To make the sample app look nicer, each item is given one of the
      // Material Design primary colors.
      : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
