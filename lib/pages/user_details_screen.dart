import 'package:auth_firebase/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../utils/k_colors.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100, bottom: 40),
                  child: Image.asset(
                    "assets/logo.png",
                    width: 80,
                  ),
                ),
                Text(
                  "Register",
                  style: TextStyle(
                      fontSize: 30,
                      color: MyColors.mainColor,
                      fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    "assets/circle-user.png",
                    width: 80,
                  ),
                ),
                Text(
                  "Take photo\nwith camera",
                  style: TextStyle(
                      fontSize: 16,
                      color: MyColors.mainColor,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    "assets/circle-user.png",
                    width: 80,
                  ),
                ),
                Text(
                  "Upload Photo\nfrom your phone",
                  style: TextStyle(
                      fontSize: 16,
                      color: MyColors.mainColor,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: MyColors.mainColor,
                  onPressed: () {},
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: MyColors.mainColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Upload",
                    style: TextStyle(
                      fontSize: 16,
                      color: MyColors.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: MyColors.mainColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: 16,
                      color: MyColors.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Need help? Visit our ",
                    style: TextStyle(
                      fontSize: 16,
                      color: MyColors.mainColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "help center",
                      style: TextStyle(
                        fontSize: 16,
                        color: MyColors.mainColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
