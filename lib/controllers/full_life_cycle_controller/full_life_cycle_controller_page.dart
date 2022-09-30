import 'package:flutter/material.dart';

class FullLifeCycleControllerPage extends StatelessWidget {
  const FullLifeCycleControllerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('FullLifeCycleControllerPage build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Full Life Cycle Controller'),
      ),
      body: Container(),
    );
  }
}
