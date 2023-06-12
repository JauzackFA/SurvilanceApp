import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:smol_p2_xixi/pages/new_main_page.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      home: MainPage(),
      // routes: {
      //   '/': (context) => LoginPage(),
      //   '/home_page': (context) => const HomePage(),
      // },

      // theme: ThemeData(
      // brightness: Brightness.dark,
      //   primarySwatch: Colors.white,
      // primaryColor: Colors.black,

      // ),
      // ),
    );
  }
}
