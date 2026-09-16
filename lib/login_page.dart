import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Column(
        children: [
          const Text(
            "Welcome to Login Application",
            style: TextStyle(
            ),
          ),
          const TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "Masukkan Username",
              hintStyle: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "Masukkan Password",
                hintStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              obscureText: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Login"),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Keluar"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}