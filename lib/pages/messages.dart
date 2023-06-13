import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
                // child: Text(
                //   'User ${index + 1}',
                //   style: TextStyle(color: Colors.white),
                // ),
                ),
            title: Text(
              'Chat ${index + 1}',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'This is a chat message from user ${index + 1}',
              style: TextStyle(color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class Message extends StatefulWidget {
//   const Message({Key? key});

//   @override
//   _MessageState createState() => _MessageState();
// }

// class _MessageState extends State<Message> {
//   final TextEditingController _messageController = TextEditingController();

//   void sendMessage() async {
//     final currentUser = FirebaseAuth.instance.currentUser;
//     final messageText = _messageController.text.trim();

//     if (messageText.isNotEmpty) {
//       try {
//         await FirebaseFirestore.instance.collection('messages').add({
//           'senderId': currentUser?.uid,
//           'senderName': currentUser?.displayName,
//           'text': messageText,
//           'timestamp': DateTime.now(),
//         });
//         _messageController.clear();
//       } catch (e) {
//         // Handle error while sending message
//         print('Failed to send message: $e');
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: StreamBuilder<QuerySnapshot>(
//               stream: FirebaseFirestore.instance
//                   .collection('messages')
//                   .orderBy('timestamp', descending: true)
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 }

//                 final messages = snapshot.data!.docs;

//                 return ListView.builder(
//                   reverse: true,
//                   itemCount: messages.length,
//                   itemBuilder: (context, index) {
//                     final message = messages[index];
//                     final senderName = message['senderName'];
//                     final text = message['text'];

//                     return ListTile(
//                       title: Text('$senderName'),
//                       subtitle: Text('$text'),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _messageController,
//                     decoration: InputDecoration(
//                       hintText: 'Type a message',
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: sendMessage,
//                   icon: Icon(Icons.send),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


