import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanber_app/latihan/latihan-2/routes/route_name.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Halaman 2"),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_3);
              },
              child: const Text("Menuju Halaman Tiga"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_1);
              },
              child: const Text("Kembali ke page 1"),
            ),
          ],
        ),
      ),
    );
  }
}
