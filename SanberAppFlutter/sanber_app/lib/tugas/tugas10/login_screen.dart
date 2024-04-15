import 'package:flutter/material.dart';
import 'package:sanber_app/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 44),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Sanber Flutter",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: Color(0xff54C5F8)),
              ),
              const SizedBox(
                height: 18,
              ),
              Image.asset(
                "assets/icon/flutter.png",
                width: 94,
                height: 100,
              ),
              const SizedBox(
                height: 29,
              ),
              SizedBox(
                width: 278,
                height: 45,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      gapPadding: 10,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      gapPadding: 10,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.5),
                child: SizedBox(
                  width: 278,
                  height: 45,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        gapPadding: 10,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        gapPadding: 10,
                      ),
                    ),
                  ),
                ),
              ),
              const Text(
                "Forgot Password",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff54C5F8),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 278,
                height: 42,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff54C5F8),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero),
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const BottomNavigationBarExample()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 75),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Does not have account?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    SizedBox(
                      width: 23,
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(
                          color: Color(0xff29B6F6),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
