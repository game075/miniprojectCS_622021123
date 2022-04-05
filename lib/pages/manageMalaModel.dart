// import 'dart:async';

// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

class ManageMala {
  final int id;
  final String name;
  final int price;

  const ManageMala({
    required this.id,
    required this.name,
    required this.price,
  });

  ManageMala.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        name = res["name"],
        price = res["price"];

  Map<String, Object?> toMap() {
    return {'id': id, 'name': name, 'price': price};
  }
}
