import 'package:benstore/pages/onboarding/login.dart';
import 'package:flutter/material.dart';

void showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.0),
        ),
        backgroundColor: const Color(0xFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0, bottom: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset('assets/ion_log-out.png'),
              const SizedBox(height: 10),
              const Text(
                'Oh no! You’re leaving...\nAre you sure?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'CircularStd',
                ),
              ),
              const SizedBox(height: 5),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: SizedBox(
                  width: 200,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFE75336),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Nah, just kidding',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 12,
                            fontFamily: 'CircularStd'),
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ),
                    (Route<dynamic> route) => false, // Remove all routes
                  ); // Navigate to WelcomeScreen
                },
                child: SizedBox(
                  width: 200,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: const Color(0xFFE75336))),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Yes, Sign me out',
                        style: TextStyle(
                            color: Color(0xFFE75336),
                            fontSize: 12,
                            fontFamily: 'CircularStd'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
