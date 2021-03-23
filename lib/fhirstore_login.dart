import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:remote_state/remote_state.dart';

class FhirstoreLogin {
  FhirstoreLogin();

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();
  bool isLoggedIn = false;
  Rx<RemoteState<dynamic>> state = RemoteState<dynamic>.initial().obs;

  Future<void> emailLogin(String email, String password) async {
    state.value = RemoteState<dynamic>.loading();
    try {
      final userCredentials = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      print(userCredentials.additionalUserInfo?.username);
      isLoggedIn = true;
      state.value = RemoteState<dynamic>.success(true);
      print('success');
      final users = firestore.collection('users');
      users.doc(email).get().then((value) => print(value.data()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        state.value =
            RemoteState<dynamic>.error('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        state.value = RemoteState<dynamic>.error(
            'Wrong password provided for that user.');
      }
    } catch (e) {
      state.value = RemoteState<dynamic>.error(e);
    }
  }

  Future<void> googleLogin() async {
    state.value = RemoteState<dynamic>.loading();
    try {
      await googleSignIn.signIn();
      print('success');
      final users = firestore.collection('users');
      users.doc('grey@fhirfli.dev').get().then((value) => print(value.data()));
    } catch (e) {
      throw PlatformException(
          code: e.toString(),
          message: 'Exception raised from GoogleAuth.signIn()');
    }
    isLoggedIn = true;
    state.value = RemoteState<dynamic>.success(true);
  }
}
