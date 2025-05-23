// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:whatsapp/views/homepage.dart';
import 'package:whatsapp/views/themes/theme.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: whatsappTheme(),
    );
  }
}
