import 'package:flutter/material.dart';
import 'package:flutter_application_6/forgetpage.dart';
import 'package:flutter_application_6/loginpage.dart';
import 'package:flutter_application_6/signuppage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Login Page",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, right: 18, left: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    width: 60,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.dribbble.com/users/1622791/screenshots/11174104/media/10f980d41342cfb900a4b8e6d025bb79.png"),
                        ),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(blurRadius: 2.5, spreadRadius: 1)
                        ]),
                  ),
                  const Text(
                    "Flutter",
                    style: TextStyle(
                      color: Color.fromARGB(255, 7, 108, 3),
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextField(
                style: const TextStyle(
                  color: Colors.blueGrey,
                ),
                decoration: InputDecoration(
                  hintText: "Username (Email)",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  fillColor: const Color.fromARGB(255, 206, 206, 206),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.zero,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.blueGrey,
                  ),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    fillColor: const Color.fromARGB(255, 206, 206, 206),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                },
                child: Container(
                  height: 40,
                  width: 160,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 0, 157, 255),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const ForgetPage();
                      },
                    ),
                  );
                },
                child: const Text(
                  "Forget Password",
                  style: TextStyle(
                    fontSize: 13.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 40,
          width: double.infinity,
          child: Builder(builder: (context) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "New User ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const SignUpPage();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
