import 'package:belajarroutes/Auth/OTP_page.dart';
import 'package:belajarroutes/Auth/login_page.dart';
import 'package:belajarroutes/Auth/register_page.dart';
import 'package:belajarroutes/BLoC/bloc/task_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'BLoC/Navbar BLoC/bottom_navigation.dart';
import 'BLoC/Navbar BLoC/navbar_bloc.dart';

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNoti.ficationsPlugin();

// import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  // Inisialisasi data lokal untuk bahasa Indonesia
  initializeDateFormatting('id', null).then((_) {
    runApp(MyApp());
  });
}

// void _initNotifications() async {
//   final AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');
//   final InitializationSettings initializationSettings = InitializationSettings(
//     android: initializationSettingsAndroid,
//   );
//   await flutterLocalNotificationsPlugin.initialize(initializationSettings);
// }

// void scheduleNotification() async {
//   var time = Time(7, 0, 0);
//   var androidPlatformChannelSpecifics = AndroidNotificationDetails(
//     'your channel id',
//     'your channel name',
//     'your channel description',
//     importance: Importance.max,
//     priority: Priority.high,
//     showWhen: false,
//   );
//   var platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);
//   await flutterLocalNotificationsPlugin.showDailyAtTime(
//     0,
//     'Task Reminder',
//     'Don\'t forget to complete your tasks!',
//     time,
//     platformChannelSpecifics,
//   );
// }

class MyApp extends StatelessWidget {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/register',
        name: 'register',
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: '/OTP',
        name: 'OTP',
        builder: (context, state) => const OTPPage(),
      ),
      GoRoute(
        path: '/',
        name: 'navbar',
        builder: (context, state) => const NavBar(),
      ),
    ],
    initialLocation: '/login',
    debugLogDiagnostics: true,
    routerNeglect: true,
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavbarBloc>(
          create: (context) => NavbarBloc(),
        ),
        // BlocProvider<TaskBloc>(
        //   create: (context) => TaskBloc()..add(LoadTasks()),
        // ),
      ],
      child: MaterialApp.router(
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}