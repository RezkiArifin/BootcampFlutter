import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:sanber_app/tugas/tugas13/config/dio_http.dart';
import 'package:sanber_app/tugas/tugas13/pages/auth/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var _passwordVisible = false;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late String? name;
  late String? username;
  late String? email;
  late String? password;
  late bool _isLoading = false;

  Future<dynamic> _registerSubmit() async {
    var data = {
      "name": name,
      "username": username,
      "email": email,
      "password": password,
    };
    try {
      setState(() {
        _isLoading = true;
      });
      var response = await DioHttp.request.post("/api/register", data: data);

      setState(() {
        _isLoading = false;
      });

      final snackBar = SnackBar(
        content: const Text("Data Berhasil Disimpan"),
        backgroundColor: Colors.green,
        action: SnackBarAction(
          label: "Undo",
          onPressed: () {},
        ),
      );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    } on DioException catch (dioException) {
      var message = "";
      switch (dioException.response!.statusCode) {
        case 422:
          Map<String, dynamic> _errorData =
              dioException.response!.data["errors"];
          var getListMessage = _errorData.values;
          var result = getListMessage.map((item) =>
              item.toString().substring(1, item.toString().length - 2));
          setState(() {
            _isLoading = false;
          });
          message = result.join("\n");
          break;
        case 404:
          setState(() {
            _isLoading = false;
          });
          message = "server not found";
          break;
        default:
          setState(() {
            _isLoading = false;
          });
          message = "Server Error";
      }
      final snackBar = SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        action: SnackBarAction(label: "Undo", onPressed: () {}),
      );
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
              child: ListView(
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
                        validator: (String? nameValue) {
                          if (nameValue!.isEmpty) {
                            return "enter name text";
                          }
                          name = nameValue;
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: "Name",
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
                        validator: (String? usernameValue) {
                          if (usernameValue!.isEmpty) {
                            return "enter username text";
                          }
                          username = usernameValue;
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: "Username",
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
                        validator: (String? emailValue) {
                          if (emailValue!.isEmpty) {
                            return "enter email text";
                          }
                          email = emailValue;
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: "Email",
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
                          hintText: "Password",
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
                      const Text("Sudah Punya akun?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()),
                            );
                          },
                          child: const Text("Masuk"))
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
                          "Daftar",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _registerSubmit();
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
