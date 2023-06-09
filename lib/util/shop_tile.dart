import 'package:flutter/material.dart';

class ShopTile extends StatelessWidget {
  const ShopTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: const EdgeInsets.all(2),
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset('lib/images/logodesign.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: const [
                  Text(
                    'Logo Design',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      // color: Color.fromRGBO(232, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
