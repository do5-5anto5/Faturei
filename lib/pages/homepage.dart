import 'package:faturei/controllers/counter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
            },
          ),
          title: const Text("Faturei"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {
                Get.toNamed('/profile');
              },
            ),
          ],
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<Controller>(
              builder: (_) => Text('clicks: ${controller.count}'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => controller.increment(),
      ),
    );
  }
}