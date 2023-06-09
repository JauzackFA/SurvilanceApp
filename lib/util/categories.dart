import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String kategori;

  Categories({required this.kategori});

  @override
  Widget build(BuildContext context) {
    return
        // Padding(
        //   padding: const EdgeInsets.only(left: 8.0),
        //   child: Text(
        //     kategori,
        //     style: TextStyle(
        //       fontSize: 16,
        //     ),
        //   ),
        // );

        Padding(
      // padding: const EdgeInsets.only(left: 20.0),
      padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
      child: Container(
        padding: const EdgeInsets.only(left: 5.0),
        width: 120,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(18),
        ),
        child: const Center(
          child: Text(
            'Logo Design',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
