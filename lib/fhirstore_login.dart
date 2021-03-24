import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    try {
      final googleUser = await GoogleSignIn().signIn();
      if (googleUser != null) {
        final googleAuth = await googleUser.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        await auth.signInWithCredential(credential);

        FirebaseFirestore.instance
            .collection('users')
            .doc('grey@fhirfli.dev')
            .get()
            .then((DocumentSnapshot documentSnapshot) {
          if (documentSnapshot.exists) {
            print(documentSnapshot.data());
          }
        });
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> logout() async {
    await auth.signOut();
    await googleSignIn.signOut();
  }
}
