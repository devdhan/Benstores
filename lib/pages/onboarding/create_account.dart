import 'package:benstore/components/my_buttton.dart';
import 'package:benstore/pages/onboarding/login.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  void signIn(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 25.0, vertical: 100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/left.png',
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
              const Text(
                'Create Account',
                style: TextStyle(fontFamily: 'CircularStd', fontSize: 35),
              ),
              const SizedBox(height: 30),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Firstname',
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
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Lastname',
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
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
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
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
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
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
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
                onTap: () => signIn(context),
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
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xCE000000),
                    ),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () => signIn(context),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xCE000000),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
