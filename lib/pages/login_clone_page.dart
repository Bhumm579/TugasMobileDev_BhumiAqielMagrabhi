import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_app_01/components/custom_textfield.dart';
import 'package:flutter_app_01/components/custom_button.dart';
import 'package:flutter_app_01/components/custom_textbutton.dart';

class LoginClonePage extends StatefulWidget {
  const LoginClonePage({super.key});

  @override
  State<LoginClonePage> createState() => _LoginClonePageState();
}

class _LoginClonePageState extends State<LoginClonePage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "English (US)\n" + statusLogin.toString(),
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1f1e22),
      ),
      backgroundColor: const Color(0xFF1f1e22),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          SvgPicture.asset(
            'assets/threads-white-icon.svg',
            width: 70,
            height: 70,
          ),
          const SizedBox(height: 80),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomTextField(
              txtController: txtUsername,
              hintText: "Username, email, or mobile phone",
              style: CustomTextFieldStyle(),
              border: CustomTextFieldBorder(),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomTextField(
              txtController: txtPassword,
              hintText: "Password",
              style: CustomTextFieldStyle(),
              border: CustomTextFieldBorder(),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 50,
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomButton(
              text: "Log In",
              onPressed: () {
                setState(() {
                  String username = txtUsername.text.toString();
                  String password = txtPassword.text.toString();

                  if (username == "admin" && password == "admin") {
                    statusLogin = "Admin";
                  } else {
                    statusLogin = "Gagal";
                  }
                });
              },
              style: CustomButtonStyle(),
            ),
          ),
          CustomTextButton(
            text: "Forgot password?",
            onPressed: () {
              print("Tombol Lupa Password diklik!");
            },
            style: const CustomTextButtonStyle(
              textColor: Colors.white,
              fontSize: 16.0,
              textWeight: FontWeight.bold,
            ),
          ),  
          SizedBox(height: 200),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/meta-white-icon.svg',
                width: 70,
                height: 70,
              ),
              Text(
                "Meta",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
