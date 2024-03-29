import 'package:auth_firebase/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  static final _auth = FirebaseAuth.instance;

  static Future<User?> registerUser(
    BuildContext context, {
    required String fullName,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      if (userCredential.user != null) {
        await userCredential.user!.updateDisplayName(fullName);
        // ignore: use_build_context_synchronously
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => HomePage(user: userCredential,),
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Succesfully Registered!!!"),
          ),
        );
        return userCredential.user;
      }
    } catch (e) {
      Future.delayed(Duration.zero).then((value) => {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  e.toString(),
                ),
              ),
            ),
          });
      return null;
    }
    return null;
  }

  static Future<User?> loginUser(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (userCredential.user != null) {
        return userCredential.user;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  static Future<void> logOut() async {
    await _auth.signOut();
  }

  static Future<void> deleteAccount() async {
    await _auth.currentUser?.delete();
  }
}
