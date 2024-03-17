import 'package:flutter/material.dart';

class ForgetPage extends StatelessWidget {
  const ForgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
          title: const Text(
            "Forget Password",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 14,
            right: 14,
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 5,
                  top: 5,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Forgeting Password Enter the Deteils"),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 0.1,
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    right: 12,
                    left: 12,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Number",
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 250,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                ),
                // color: Colors.blue,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Send OTP",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
