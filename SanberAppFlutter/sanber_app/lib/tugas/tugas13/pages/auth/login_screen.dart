import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:sanber_app/tugas/tugas13/config/dio_http.dart';
import 'package:sanber_app/tugas/tugas13/pages/auth/register_screen.dart';
import 'package:sanber_app/tugas/tugas13/pages/main_app/main_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _passwordVisible = false;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late String? email;
  late String? password;
  late bool _isLoading = false;

  Future<dynamic> _login() async {
    var data = {"email": email, "password": password};
    try {
      // print(data);
      setState(() {
        _isLoading = true;
      });
      var response = await DioHttp.request.post("/api/login", data: data);
      // print(response.data);

      setState(() {
        _isLoading = false;
      });

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('user-token', response.data["token"]);

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MainApp()),
      );
    } on DioException catch (dioException) {
      var message = "";
      switch (dioException.response!.statusCode) {
        case 400:
          setState(() {
            _isLoading = false;
          });
          message = dioException.response!.data["message"].toString();
          break;
        case 404:
          setState(() {
            _isLoading = false;
          });
          message = "Server Not Found";
          break;
        default:
          setState(() {
            _isLoading = false;
          });
          message = "Server Error";
      }
      final snackBar = SnackBar(
          content: const Text("invalid Username dan Password"),
          action: SnackBarAction(label: "undo", onPressed: () {}));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
          child: LoadingOverlay(
        isLoading: _isLoading,
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    "JobFinder",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff475BD7)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Explore Your Dream Jobs",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff475BD7)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        validator: (String? emailValue) {
                          if (emailValue!.isEmpty) {
                            return "enter email text";
                          }
                          email = emailValue;
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: "Masukkan Email Anda",
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        obscureText: !_passwordVisible,
                        validator: (String? passwordValue) {
                          if (passwordValue!.isEmpty) {
                            return "enter password text";
                          }
                          password = passwordValue;
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Masukkan Password Anda",
                          hintStyle: const TextStyle(color: Colors.black),
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).primaryColorDark,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const Text("Belum Punya akun?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterScreen()),
                            );
                          },
                          child: const Text("Daftar"))
                    ],
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      alignment: Alignment.center,
                      child: TextButton(
                        child: const Text(
                          "Masuk",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _login();
                          }
                        },
                      ),
                    ),
                  )
                ],
              )),
        ),
      )),
    );
  }
}
