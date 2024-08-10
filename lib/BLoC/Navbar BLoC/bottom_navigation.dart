import 'package:belajarroutes/BLoC/Navbar%20BLoC/navbar_bloc.dart';
import 'package:belajarroutes/Screens/Mosque/mosque.page.dart';
import 'package:belajarroutes/Screens/Profile/profile_page.dart';
import 'package:belajarroutes/Screens/Qiblah/qiblah_page.dart';
import 'package:belajarroutes/Screens/Sholat/sholat_page.dart';
import 'package:belajarroutes/Screens/tasks/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<Widget> _bodyItems = [
  const MainPage(),
  const SholatPage(),
  const QiblahPage(),
  const MosquePage(),
  const ProfilePage(),
];

List<BottomNavigationBarItem> _bottomNavbarItem = [
  const BottomNavigationBarItem(icon: Icon(Icons.add_task_rounded), label: "Tasks"),
  const BottomNavigationBarItem(icon: Icon(Icons.mosque_rounded), label: "Sholat"),
  const BottomNavigationBarItem(icon: Icon(Icons.compass_calibration_rounded), label: "Qiblah"),
  const BottomNavigationBarItem(icon: Icon(Icons.pin_drop_rounded), label: "masjid"),
  const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
];

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarBloc, NavbarState>(
      builder: (context, state) {
        return Scaffold(
          body: _bodyItems[state.tabIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: _bottomNavbarItem,
            currentIndex: state.tabIndex,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              BlocProvider.of<NavbarBloc>(context).add(ChangeTabEvent(index));
            },
          ),
        );
      },
    );
  }
}

// List<Widget> _bodyItems = [
//   const HomeScreen(),
//   const FavoriteScreen(),
//   const ProfileScreen(),
// ];

// List<BottomNavigationBarItem> _bottomNavbarItem = [
//   const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//   const BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
//   const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
// ];

// class MainScreen extends StatelessWidget {
//   const MainScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<MainBloc, MainState>(
//       builder: (context, state) {
//         return Scaffold(
//           body: _bodyItems[state.tabIndex],
//           bottomNavigationBar: BottomNavigationBar(
//             items: _bottomNavbarItem,
//             currentIndex: state.tabIndex,
//             selectedItemColor: Theme.of(context).colorScheme.primary,
//             unselectedItemColor: Colors.grey,
//             onTap: (index) {
//               BlocProvider.of<MainBloc>(context).add(ChangeTabEvent(index));
//             },
//           ),
//         );
//       },
//     );
//   }
// }
