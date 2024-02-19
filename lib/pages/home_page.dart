import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../services/auth_service.dart';
import '../utils/k_colors.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  var user = User;
  HomePage({super.key,  user});

  @override
  Widget build(BuildContext context) {
    // final currentUser = FirebaseAuth.instance;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Page"),
        actions: [
          IconButton(
            onPressed: () async {
              await AuthService.logOut();
              // ignore: use_build_context_synchronously
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: MyColors.mainColor,
                    foregroundColor: MyColors.whiteColor,
                    child: const Text(
                      "C",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Coach Time",
                    style: TextStyle(
                        fontSize: 30,
                        color: MyColors.mainColor,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Hi ${user}",
              style: TextStyle(
                  fontSize: 18,
                  color: MyColors.mainColor,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 30),
            Text(
              "Congrats!\nYour account with Coach Time has\nbeen successfully created.",
              style: TextStyle(
                  fontSize: 18,
                  color: MyColors.mainColor,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 30),
            Text(
              "User Name:\nUser Email:\nPassword:\n ",
              style: TextStyle(
                  fontSize: 18,
                  color: MyColors.mainColor,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
