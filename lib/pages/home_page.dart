// import 'package:coffeeatute'
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:smol_p2_xixi/pages/login_page.dart';
import 'package:smol_p2_xixi/util/shop_tile.dart';
import 'package:smol_p2_xixi/util/categories.dart';
import 'package:smol_p2_xixi/pages/messages.dart';
import 'package:smol_p2_xixi/pages/person.dart';
import 'package:smol_p2_xixi/util/suggestion.dart';
import '../components/navbar.dart';
// import '../util/recomendation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List<Widget> buildPages = [
    const Message(),
    const Person(),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR LOGO
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/images/logo.png',
              width: 190,
              height: 50,
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        child: Column(
          children: [
            // StreamBuilder<User?>(
            //   stream: FirebaseAuth.instance.authStateChanges(),
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData) {
            //       return HomePage();
            //     } else {
            //       return LoginPage();
            //     }
            //   },
            // ),
            buildPages[currentIndex],
            const SizedBox(height: 0),

            // SEARCH ATAS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                ),
              ),
            ),
            const SizedBox(height: 18),
            // TULISAN REKOMENDASI
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Recommended for you',
                    style: TextStyle(
                      color: Color.fromARGB(232, 255, 255, 255),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    'lib/images/chevron-right.png',
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 22.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       Image.asset(
            //         'lib/images/chevron-right.png',
            //         height: 24,
            //         width: 24,
            //       ),
            //     ],
            //   ),
            // ),

            const SizedBox(height: 18),

            // CONTAINER REKOMENDASI
            SizedBox(
              height: 157,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ShopTile(),
                  ShopTile(),
                  ShopTile(),
                  ShopTile(),
                ],
              ),
            ),

            const SizedBox(height: 18),

            // TULISAN KATEGORI
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      color: Color.fromARGB(232, 255, 255, 255),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    'lib/images/chevron-right.png',
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            // ISI DARI KATEGORI
            SizedBox(
              height: 35,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Categories(
                    kategori: 'Logo Design',
                  ),
                  Categories(
                    kategori: 'Pre Wedding Photogerapher',
                  ),
                  Categories(
                    kategori: 'Flyer Design',
                  ),
                  Categories(
                    kategori: 'Voice Over',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Suggested For You',
                    style: TextStyle(
                      color: Color.fromARGB(232, 255, 255, 255),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    'lib/images/chevron-right.png',
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 0),

            Suggestion(),

            // Expanded(
            //   child: Suggestion(),
            // ),

            // Expanded(
            //   child: Suggestion(),
            // ),

            // Container(
            //   width: 376,
            //   height: 187,
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //       color: Colors.white,
            //       width: 2, // Ubah nilai ini untuk mengatur lebar stroke
            //     ),
            //     borderRadius: BorderRadius.circular(20),
            //   ),
            //   child: Column(
            //     children: [
            //       Image.asset(
            //         'lib/images/maskun-wed1.png',
            //         width: 400,
            //       ),

            //       // Padding(
            //       //   padding: EdgeInsets.symmetric(vertical: 8),
            //       //   child: Column(children: [Text(data)]),
            //       // )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
      ),
    );
  }
}
