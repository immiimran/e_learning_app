import 'package:e_learning/pages/navbar.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/undraw_Unlock_re_a558.png',
                height: size.height * .5,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: size.height * .6,
                    width: double.infinity,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 65,
                        ),
                        const Text(
                          " Discover your next skill\nLearn anything you want",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Discover the things you want to\n     learn and grow with them.",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const NavBar()));
                            },
                            child: const Text(
                              'Get Started',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 248, 5, 236),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
