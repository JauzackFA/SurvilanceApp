// import 'package:flutter/material.dart';
// import 'package:smol_p2_xixi/pages/messages.dart';
// import 'package:smol_p2_xixi/pages/person.dart';
// import 'package:smol_p2_xixi/pages/home_page.dart';

// class CustomNavigationBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DashboardInvestor();
//   }
// }

// class DashboardInvestor extends StatefulWidget {
//   @override
//   _DashboardInvestorState createState() => _DashboardInvestorState();
// }

// class _DashboardInvestorState extends State<DashboardInvestor> {
//   int currentIndex = 0;
//   final screens = [
//     HomePage(),
//     Message(),
//     Person(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.purple[200]!,
//       body: IndexedStack(
//         index: currentIndex,
//         children: screens,
//       ),
//       bottomNavigationBar: NavigationBarTheme(
//         data: NavigationBarThemeData(
//           labelTextStyle: MaterialStateProperty.all(
//             const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
//           ),
//           indicatorColor: Colors.blue.shade100,
//         ),
//         child: NavigationBar(
//           height: 60,
//           backgroundColor: Color(0xFFf1f5fb),
//           selectedIndex: currentIndex,
//           onDestinationSelected: (index) =>
//               setState(() => this.currentIndex = index),
//           destinations: const [
//             NavigationDestination(
//               icon: Icon(Icons.home),
//               selectedIcon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             NavigationDestination(
//               icon: Icon(Icons.book),
//               selectedIcon: Icon(Icons.book),
//               label: 'Message',
//             ),
//             NavigationDestination(
//               icon: Icon(Icons.list),
//               selectedIcon: Icon(Icons.list),
//               label: 'Search',
//             ),
//             NavigationDestination(
//               icon: Icon(Icons.account_balance_wallet),
//               selectedIcon: Icon(Icons.account_balance_wallet),
//               label: 'Shopping Chart',
//             ),
//             NavigationDestination(
//               icon: Icon(Icons.person),
//               selectedIcon: Icon(Icons.person),
//               label: 'Profile',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomNavigationBar(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.white,
      selectedItemColor: Color.fromARGB(1000, 147, 222, 255),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shop),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
      ],
    );
  }
}
