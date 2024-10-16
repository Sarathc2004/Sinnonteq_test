// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sinnonteq_test/utils/colorconstant/colorconstant.dart';

class Signinscreen extends StatelessWidget {
  const Signinscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Color.fromARGB(255, 146, 166, 191),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/sinnonteq.png',
                      fit: BoxFit.cover, height: 120),
                  SizedBox(height: 50),
                  const Text(
                    'Everyday is tasty',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Sign in or Sign up',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: colorconstant.primaryblue),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(
                                    color: colorconstant.primaryblue)),
                          ),
                          child: Center(child: const Text('+91')),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your Phone Number',
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      context.go('/bottomnavscreen');
                    },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: colorconstant.primaryblue),
                      child: Center(
                          child: Text(
                        "Continue",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text('Or', textAlign: TextAlign.center),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                signinbutton('assets/images/google.jpeg'),
                const SizedBox(width: 16),
                signinbutton('assets/images/apple.jpeg'),
                const SizedBox(width: 16),
                signinbutton('assets/images/facebook.jpeg'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget signinbutton(String assetName) {
    return Card(
      elevation: 8,
      shape: CircleBorder(),
      shadowColor: Colors.black.withOpacity(0.5),
      child: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 15,
          backgroundColor: Colors.transparent,
          child: Image.asset(
            assetName,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
