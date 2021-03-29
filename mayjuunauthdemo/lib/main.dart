import 'package:fhir_store/fhirstore_dao.dart';
import 'package:fhir_store/fhirstore_login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'new_patient.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final login = FhirstoreLogin();

  SizedBox _heightBox(double size) => SizedBox(height: Get.height * size);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fhirestore_Cloud Demo',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _heightBox(0.05),
              Container(
                width: Get.width * .7,
                height: Get.height * 0.08,
                child: TextField(
                  obscureText: false,
                  controller: _email,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Get.width * 0.05)),
                  ),
                ),
              ),
              _heightBox(0.01),
              Container(
                width: Get.width * .7,
                height: Get.height * 0.08,
                child: TextField(
                  controller: _password,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Get.width * 0.05)),
                  ),
                ),
              ),
              _heightBox(0.05),
              Container(
                width: Get.width * .7,
                height: Get.height * 0.07,
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Get.width * 0.05),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    await login.emailLogin(_email.text, _password.text);
                  },
                  child:
                      Text('Password', style: TextStyle(color: Colors.white)),
                ),
              ),
              _heightBox(0.05),
              Container(
                width: Get.width * .7,
                height: Get.height * 0.07,
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Get.width * 0.05),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    await login.googleLogin();
                  },
                  child: Text('Google', style: TextStyle(color: Colors.white)),
                ),
              ),
              _heightBox(0.05),
              Container(
                width: Get.width * .7,
                height: Get.height * 0.07,
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Get.width * 0.05),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    await _uploadPatient();
                  },
                  child: Text('Upload', style: TextStyle(color: Colors.white)),
                ),
              ),
              _heightBox(0.05),
              Container(
                width: Get.width * .7,
                height: Get.height * 0.07,
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Get.width * 0.05),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    await login.logout();
                  },
                  child: Text('Logout', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future _uploadPatient() async {
  final patient = newPatient();
  final fhirStoreDao = FhirStoreDao();
  try {
    await fhirStoreDao.save(patient);
    await FirebaseFirestore.instance.collection('users').doc('newUser').set(
        {'name': 'Grey II', 'company': 'Fake Greys ${DateTime.now()}'},
        SetOptions(merge: true));
  } catch (e) {
    print(e);
  }
}
