import 'package:flutter/material.dart';

import '../../utils/colors/app_color.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_redirect.dart';
import '../../widgets/custom_textfield.dart';
import 'login_screen.dart';


class SignupPage extends StatelessWidget {

  SignupPage({super.key});

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Signup",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),

        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Spacer(flex: 2,),
                CustomTextField(
                  controller: _nameController,
                  hintText: 'Name',

                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  controller: _emailController,
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters long';
                    }
                    return null;
                  },
                ),
                const Spacer(flex: 4,),
                CustomButton(
                  text: "Signup",
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {


                    }
                  },
                ),
                CustomRedirect(
                  message: 'Already have an account? ',
                  linkText: ' Login',
                  Navigate: LoginPage(),
                ),
                const Spacer(flex: 1,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
