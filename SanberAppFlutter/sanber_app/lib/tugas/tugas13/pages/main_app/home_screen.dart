import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sanber_app/tugas/tugas13/config/dio_http.dart';
import 'package:sanber_app/tugas/tugas13/pages/auth/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var temp = "";
  Future<dynamic> _logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? userToken = prefs.getString("user-token");
    setState(() {
      temp == userToken;
    });
    try {
      var response = await DioHttp.request.post("/api/logout",
          options: Options(headers: {"authorization": "Bearer $userToken"}));

      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.clear();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    } catch (e) {
      print("Gagal");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: const Text(
                "Selamat Datang",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(5)),
              child: Container(
                alignment: Alignment.center,
                child: TextButton(
                    child: const Text(
                      "Logout",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      _logout();
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
