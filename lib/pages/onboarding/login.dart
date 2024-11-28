import 'package:benstore/components/my_buttton.dart';
import 'package:benstore/pages/onboarding/create_account.dart';
import 'package:benstore/pages/onboarding/siginpass.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  // Function to navigate to the Siginpass page
  void signInPassword(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Siginpass()),
    );
  }

  void createAccount(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CreateAccount()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 100.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sign in',
                  style: TextStyle(fontFamily: 'CircularStd', fontSize: 35),
                ),
                const SizedBox(height: 30),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email address',
                    labelStyle: TextStyle(
                        color: Color(0x87272727),
                        fontFamily: 'CircularStd',
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    filled: true,
                    fillColor: Color(0x39B3B3B3),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                MyButton(
                  onTap: () => signInPassword(context),
                  buttonText: 'Continue',
                  buttonColor: const Color(0xFFE75336),
                  buttonTextColor: const Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontFamily: 'CircularStd',
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Do not have an Account?',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xCE000000),
                      ),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () => createAccount(context),
                      child: const Text(
                        'Create one',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xCE000000),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                MyButton(
                  onTap: () => signInPassword(context),
                  buttonText: 'Continue with Apple',
                  buttonColor: const Color(0x39B3B3B3),
                  buttonTextColor: const Color(0xCE000000),
                  fontSize: 16,
                  fontFamily: 'CircularStd',
                  buttonImage: Image.asset('assets/Apple.png'),
                  fontWeight: FontWeight.normal,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  onTap: () => signInPassword(context),
                  buttonText: 'Continue with Google',
                  buttonColor: const Color(0x39B3B3B3),
                  buttonTextColor: const Color(0xCE000000),
                  fontSize: 16,
                  fontFamily: 'CircularStd',
                  buttonImage: Image.asset('assets/Google.png'),
                  fontWeight: FontWeight.normal,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  onTap: () => signInPassword(context),
                  buttonText: 'Continue with Facebook',
                  buttonColor: const Color(0x39B3B3B3),
                  buttonTextColor: const Color(0xCE000000),
                  fontSize: 16,
                  fontFamily: 'CircularStd',
                  buttonImage: Image.asset('assets/Facebook.png'),
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
