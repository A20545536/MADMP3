import 'package:flutter/material.dart';
import 'package:battleships/views/load_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoadPage(),
  ));
}
