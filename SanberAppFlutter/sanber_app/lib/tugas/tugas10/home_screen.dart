import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 65, horizontal: 42),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/icon/notifications.png",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/icon/add_shopping_cart.png",
                    width: 24,
                    height: 24,
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Welcome,",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color: Color(0xff54C5F8),
                ),
              ),
              const Text(
                "Rezki",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color: Color(0xff01579B),
                ),
              ),
              const SizedBox(
                height: 68,
              ),
              SizedBox(
                width: 278,
                height: 45,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: const TextStyle(
                      fontSize: 14,
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
              const SizedBox(
                height: 72,
              ),
              const Text(
                "Recomended Place",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 500,
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 21,
                  children: [
                    Image.asset(
                      "assets/img/monas.png",
                      width: 120,
                      height: 70,
                    ),
                    Image.asset(
                      "assets/img/roma.png",
                      width: 120,
                      height: 70,
                    ),
                    Image.asset(
                      "assets/img/berlin.png",
                      width: 120,
                      height: 70,
                    ),
                    Image.asset(
                      "assets/img/tokyo.png",
                      width: 120,
                      height: 70,
                    ),
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
