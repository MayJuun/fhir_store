import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fhir_store/async_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FhirstoreLogin {
  FhirstoreLogin();

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Rx<AsyncState> state = AsyncState.initial().obs;
  GoogleSignIn googleSignIn = GoogleSignIn();

  Future<void> emailLogin(String email, String password) async {
    state.value = AsyncState.loading();
    try {
      final credentials = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      print(credentials);
      state.value = AsyncState.success();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        state.value = AsyncState.error(
            display: 'No user found for that email.', error: e);
      } else if (e.code == 'wrong-password') {
        state.value = AsyncState.error(
            display: 'Wrong password provided for that user.', error: e);
      }
    } catch (e) {
      state.value = AsyncState.error(error: e);
    }
    print(state.value);
  }

  Future<void> googleLogin() async {
    state.value = AsyncState.loading();
    try {
      print(googleSignIn.clientId);
      final googleUser = await googleSignIn.signIn();
      print(googleUser == null);
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
      state.value =
          AsyncState.error(display: 'Error with google signin', error: e);
    }
    print(state.value);
  }

  Future<void> logout() async {
    await auth.signOut();
    await googleSignIn.signOut();
  }
}
