import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_gerenciadeestado/controllers/workers/workers_controller.dart';

class WorkersPage extends StatefulWidget {
  const WorkersPage({Key? key}) : super(key: key);

  @override
  State<WorkersPage> createState() => _WorkersPageState();
}

class _WorkersPageState extends State<WorkersPage> {
  final controller = Get.find<WorkersController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: controller.alterarMsg,
            ),
            Obx(() => Text(controller.msg)),
          ],
        ),
      ),
    );
  }
}
