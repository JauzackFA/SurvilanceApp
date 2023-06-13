import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:smol_p2_xixi/components/text_box.dart';

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  final currentUser = FirebaseAuth.instance.currentUser!;
  void signOutUser() {
    FirebaseAuth.instance.signOut();
  }

  Future<void> editField(String field) async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          const SizedBox(height: 30),
          // Icon(
          //   Icons.person,
          //   size: 72,
          //   color: Colors.white,
          // ),

          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(
              'lib/images/yujin.png',
            ),
          ),

          const SizedBox(height: 15),

          Text(
            currentUser.email!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'My Details',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 25),
          MyTextBox(
            text: 'Justin Ganteng',
            sectionName: 'Username',
            onPressed: () => editField('username'),
          ),
          const SizedBox(height: 25),
          MyTextBox(
            text: 'Empty Bio!',
            sectionName: 'Bio',
            onPressed: () => editField('bio'),
          ),
          const SizedBox(height: 230),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ElevatedButton(
              onPressed: signOutUser,
              child: Text('Sign Out'),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(150, 40))),
            ),
          ),
        ],
      ),
    );
  }
}

// class Person extends StatelessWidget {
//   const Person({Key? key});

//   void signOutUser() {
//     FirebaseAuth.instance.signOut();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final currentUser = FirebaseAuth.instance.currentUser;
//     final userName = currentUser?.displayName ?? '';
//     final jobRole = 'Software Engineer'; // Replace with the actual job role

//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           'Name: $userName',
//           style: TextStyle(fontSize: 18),
//         ),
//         SizedBox(height: 10),
//         Text(
//           'Job Role: $jobRole',
//           style: TextStyle(fontSize: 18),
//         ),
//         SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: signOutUser,
//           child: Text('Sign Out'),
//         ),
//       ],
//     );
//   }
// }




// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class Person extends StatelessWidget {
//   const Person({Key? key});

//   void signOutUser() {
//     FirebaseAuth.instance.signOut();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final currentUser = FirebaseAuth.instance.currentUser;
//     final userName = currentUser?.displayName ?? '';
//     final jobRole = 'Software Engineer'; // Replace with the actual job role

//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           'Name: $userName',
//           style: TextStyle(fontSize: 18),
//         ),
//         SizedBox(height: 10),
//         Text(
//           'Job Role: $jobRole',
//           style: TextStyle(fontSize: 18),
//         ),
//         SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: signOutUser,
//           child: Text('Sign Out'),
//         ),
//       ],
//     );
//   }
// }

// class Person extends StatelessWidget {
//   const Person({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     String userName = 'John Doe'; // Replace with the user's name
//     String jobRole = 'Software Engineer'; // Replace with the user's job role
//     double accountBalance = 5000.0; // Replace with the user's account balance

//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           'Profile',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 20),
//         Text(
//           'Name: $userName',
//           style: TextStyle(fontSize: 16),
//         ),
//         Text(
//           'Job Role: $jobRole',
//           style: TextStyle(fontSize: 16),
//         ),
//         SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: () {
//             // TODO: Implement sign-out functionality
//           },
//           child: Text(
//             'Sign Out',
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//         SizedBox(height: 20),
//         Text(
//           'Account Balance: \$$accountBalance',
//           style: TextStyle(fontSize: 16),
//         ),
//       ],
//     );
//   }
// }
