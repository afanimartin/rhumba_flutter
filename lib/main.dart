import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rhumba_app/firebase_options.dart';
import 'package:rhumba_app/screens/home.dart';
// import 'package:rhumba_app/screens/home.dart';
import 'package:rhumba_app/screens/login.dart';
import 'package:rhumba_app/screens/profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
  ]);

  // final storage = FirebaseStorage.instance;
  // final config = FirebaseUIStorageConfiguration(storage: storage);

  // await FirebaseUIStorage.configure(config);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rhumba Chap-chap',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: GoogleFonts.montserratTextTheme()),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const Login(),
        '/home': (context) => LandingPage(),
      },
    );
  }
}
