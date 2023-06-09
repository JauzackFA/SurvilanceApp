import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:smol_p2_xixi/components/square_tile.dart';
import 'package:smol_p2_xixi/components/textfield.dart';
// import 'package:smol_p2_xixi/components/the_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // @override
  // LoginPage({super.key});

  // Text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: usernameController.text.trim(),
      password: passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // void signUserIn() {}
  // void navigateToHomePage(BuildContext context) {
  //   Navigator.pushReplacementNamed(context, '/home_page');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Center(
                child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/images/logo.png',
                    width: 350,
                    height: 120,
                  ),
                ],
              ),

              const SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Log In',
                      style: TextStyle(
                          color: Color.fromARGB(232, 255, 255, 255),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Username
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: true,
              ),

              const SizedBox(height: 20),

              // Password
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('Recovery Password',
                        style: TextStyle(
                            color: Color.fromARGB(1000, 147, 222, 255),
                            fontSize: 16)),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // MyButton(onTap: () {
              //   Navigator.pushNamed(context, '/home_page');
              // }),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: signIn,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(1000, 147, 222, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                        child: Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),

              const SizedBox(height: 50),

              Row(
                children: const [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.white,
                      indent: 30,
                      endIndent: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or Continue with',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.white,
                      indent: 1,
                      endIndent: 30,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SquareTile(imagePath: 'lib/images/facebook-circle.png'),
                  SquareTile(imagePath: 'lib/images/instagram-circle.png'),
                  SquareTile(imagePath: 'lib/images/linkedin-circle.png'),
                  SquareTile(imagePath: 'lib/images/google-circle.png'),
                ],
              ),

              const SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Dont have an account?',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    ' Sign Up',
                    style: TextStyle(
                        color: Color.fromARGB(1000, 147, 222, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ))));
  }
}
