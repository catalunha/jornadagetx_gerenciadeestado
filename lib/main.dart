import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_gerenciadeestado/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
      ],
    );
  }
}
