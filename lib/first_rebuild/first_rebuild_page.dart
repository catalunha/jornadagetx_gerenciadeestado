import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstRebuildPage extends StatefulWidget {
  const FirstRebuildPage({Key? key}) : super(key: key);

  @override
  State<FirstRebuildPage> createState() => _FirstRebuildPageState();
}

class _FirstRebuildPageState extends State<FirstRebuildPage> {
  final isAluno = false.obs;

  @override
  void initState() {
    super.initState();
    ever<bool>(isAluno, (value) {
      Get.snackbar('Ever', 'É aluno $value');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Rebuild'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Switch(value: isAluno.value, onChanged: (value) {})),
            ElevatedButton(
                onPressed: () {
                  isAluno(true);
                },
                child: const Text('set true')),
            ElevatedButton(
                onPressed: () {
                  isAluno(false);
                },
                child: const Text('set false')),
          ],
        ),
      ),
    );
  }
}
