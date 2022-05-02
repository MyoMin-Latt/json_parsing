// Error => import 'package:json_serializable/builder.dart';

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json_parsing01/instructor/presentation/instructor_page.dart';
import 'package:json_parsing01/model/product.dart';
import 'package:json_parsing01/model/shape_two.dart';
import 'package:json_parsing01/model/weather.dart';

import 'model/product_two.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InstructorPage(),
    );
  }
}
