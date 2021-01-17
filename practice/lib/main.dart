import 'package:flutter/material.dart';
import 'package:practice/pages/HomePage.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Awesome App",
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.purple),
    ),
  );
}
