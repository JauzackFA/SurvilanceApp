import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('User ${index + 1}'),
            ),
            title: Text('Chat ${index + 1}'),
            subtitle: Text('This is a chat message from user ${index + 1}'),
          );
        },
      ),
    );
  }
}
