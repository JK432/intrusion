import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../Models/Users/genaraluser.dart';
import '../Models/Users/uuser.dart';
import '../Widgets/snackbar.dart';

class Authentication {
  /// SignIn with google account
  signIn(BuildContext context) async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );


        await FirebaseAuth.instance.signInWithCredential(credential);
    // Uuser u = await readUser().first;
    // if (u.email=="") {
    //   CreateUserInstance();
    // }
  }

  /// Writing to database.
  // CreateUserInstance() async {
  //   GenaralUser user = userData();
  //   final FSinstance =
  //       FirebaseFirestore.instance.collection("users").doc(user.email);
  //   Uuser uuser = Uuser(
  //       id: user.uid,
  //       name: user.name,
  //       email: user.email,
  //       phurl: user.phurl,
  //       games: []);
  //   final json = uuser.toJson();
  //   await FSinstance.set(json).then((value) => null);
  // }

  ///SIGNOUT
  Future<void> signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      await GoogleSignIn().signOut();

      ScaffoldMessenger.of(context)
          .showSnackBar(snackbar().snackBarSucess("Signed Out"));
    } on FirebaseAuthException catch (e) {
      String msg = e.message!;
      if (msg != null)
        ScaffoldMessenger.of(context)
            .showSnackBar(snackbar().snackBarFail(msg));
      else {
        ScaffoldMessenger.of(context)
            .showSnackBar(snackbar().snackBarFail("Error"));
      }
    } catch (e) {
      print(e);
    }
  }

  ///Collecting User datafrom google acc
  GenaralUser userData() {
    String? e = FirebaseAuth.instance.currentUser?.email;
    String? u = FirebaseAuth.instance.currentUser?.uid;
    String? n = FirebaseAuth.instance.currentUser?.displayName;
    String? p = FirebaseAuth.instance.currentUser?.photoURL;
    GenaralUser U = GenaralUser(e ?? "", u ?? "", n ?? "", p ?? "");
    return U;
  }

  ///Stream a particular user based on email.
  // Stream<Uuser> readUser() {
  //   String uid = Authentication().userData().email;
  //   return FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(uid)
  //       .snapshots()
  //       .map((snapshot) {
  //     if (snapshot.exists) {
  //       return Uuser.fromJson(snapshot.data() as Map<String, dynamic>);
  //     } else {
  //       return Uuser();
  //     }
  //   });
  // }
}
