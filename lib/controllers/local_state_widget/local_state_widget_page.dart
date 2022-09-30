import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalStateWidgetPage extends StatelessWidget {
  const LocalStateWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local State Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueBuilder<bool?>(
              initialValue: true,
              builder: (obscureValue, updater) {
                return TextFormField(
                  obscureText: obscureValue!,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(obscureValue
                          ? Icons.remove_red_eye_outlined
                          : Icons.remove_red_eye),
                      onPressed: () {
                        updater(!obscureValue);
                      },
                    ),
                  ),
                );
              },
              onUpdate: (p0) {
                print('Alterado para $p0');
              },
              onDispose: () {
                print('removido');
              },
            ),
            ObxValue<RxBool>((obscureData) {
              return TextFormField(
                obscureText: obscureData.value,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(obscureData.value
                        ? Icons.remove_red_eye_outlined
                        : Icons.remove_red_eye),
                    onPressed: () {
                      obscureData.toggle();
                    },
                  ),
                ),
              );
            }, true.obs),
          ],
        ),
      ),
    );
  }
}
