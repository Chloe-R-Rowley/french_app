// pages/sign_up_page.dart

import 'package:flutter/material.dart';
import 'package:french_app/widgets/custom_button.dart';
import 'package:french_app/widgets/text_field_input.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignupPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }

  void signUpUser() {
    setState(() {
      _isLoading = true;
    });

    // Simulate a delay for the signup process
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });

      // Navigate to the home screen or perform other actions
      if (context != null && context!.mounted) {
        Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                children: [
                  const TextSpan(text: "Sign up now to access immersive "),
                  TextSpan(
                    text: "French",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const TextSpan(text: " lessons"),
                ],
              ),
            ),
            const SizedBox(height: 30),
            TextFieldInput(
              textEditingController: emailController,
              hintText: "Email",
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 12),
            TextFieldInput(
              textEditingController: usernameController,
              hintText: "Username",
              textInputType: TextInputType.text,
            ),
            const SizedBox(height: 12),
            TextFieldInput(
              textEditingController: passwordController,
              hintText: "Password",
              textInputType: TextInputType.text,
              isPass: true,
            ),
            const SizedBox(height: 60),
            CustomButton(
              text: "Sign Up",
              onPressed: signUpUser,
              isLoading: _isLoading,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                TextButton(
                  onPressed: _isLoading
                      ? null
                      : () {
                          Navigator.pushNamed(context, '/signIn');
                        },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
