import 'package:benstore/pages/onboarding/login.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  void login(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Center(child: Image.asset('assets/profilepic.png')),
              const SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0x39B3B3B3),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Benedict Jones',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'benedictjones12@gmail.com',
                              style: TextStyle(
                                fontFamily: 'CircularStd',
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print("Edit clicked");
                              },
                              child: const Text(
                                'Edit',
                                style: TextStyle(
                                  fontFamily: 'CircularStd',
                                  fontSize: 16,
                                  color: Color(0xFFE75336),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '+2348122512189',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 65,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0x39B3B3B3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Address',
                              style: TextStyle(
                                fontFamily: 'CircularStd',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('address pressed');
                              },
                              child: Image.asset(
                                'assets/arrowright.png',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 65,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0x39B3B3B3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Wishlist',
                              style: TextStyle(
                                fontFamily: 'CircularStd',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('wishlist pressed');
                              },
                              child: Image.asset(
                                'assets/arrowright.png',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 65,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0x39B3B3B3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Payment',
                              style: TextStyle(
                                fontFamily: 'CircularStd',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('payment pressed');
                              },
                              child: Image.asset(
                                'assets/arrowright.png',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 65,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0x39B3B3B3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Help',
                              style: TextStyle(
                                fontFamily: 'CircularStd',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('help pressed');
                              },
                              child: Image.asset(
                                'assets/arrowright.png',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 65,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0x39B3B3B3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Support',
                              style: TextStyle(
                                fontFamily: 'CircularStd',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('suport pressed');
                              },
                              child: Image.asset(
                                'assets/arrowright.png',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () => login(context),
                child: const Text(
                  'Sign Out',
                  style: TextStyle(
                      fontFamily: 'CircularStd',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFE75336)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
