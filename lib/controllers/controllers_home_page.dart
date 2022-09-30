import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllersHomePage extends StatelessWidget {
  const ControllersHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Controller home'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/controllers/getxcontroller');
                },
                child: const Text('GetX Controller - Example'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/controllers/getxwidget');
                },
                child: const Text('GetX Controller - Widget'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/controllers/localstate');
                },
                child: const Text('GetX Controller - Local State'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/controllers/workers');
                },
                child: const Text('GetX Controller - workers'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/controllers/full_life_cycle_controller');
                },
                child:
                    const Text('GetX Controller - full_life_cycle_controller'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
