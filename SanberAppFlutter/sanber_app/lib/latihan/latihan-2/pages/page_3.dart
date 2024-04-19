import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanber_app/latihan/latihan-2/routes/route_name.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Halaman 3"),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_2);
              },
              child: const Text("kembali ke page dua"),
            ),
          ],
        ),
      ),
    );
  }
}
