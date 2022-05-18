import 'package:flutter/material.dart';
import 'package:news_update_app/utils/widgets/custom_elevated_button.dart';
import 'package:news_update_app/utils/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final _email = TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login",
                style: TextStyle(fontSize: 50, color: Colors.blueAccent),
              ),
              const SizedBox(height: 40.0),
              Padding(
                padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                child: CustomTextField(
                  lable: 'User Name',
                  controller: _email,
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                child: CustomTextField(
                  lable: 'Password',
                  controller: _password,
                  is_obsecure: true,
                ),
              ),
              const SizedBox(height: 100.0),
              CustomElevatedButton(
                lable: 'Login',
                onTap: () {
                  print("input email is : ${_email.text} and password ${_password.text}");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
