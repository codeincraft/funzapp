import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:funz/funz.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await FirebaseMessaging.instance.setAutoInitEnabled(true);
  // FirebaseApi().initNotification();
  // await dotenv.load(fileName: ".env");
  runApp(FunZApp());
}


