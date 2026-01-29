import 'package:bloc_learning/bloc/switch/switch_bloc.dart';
import 'package:bloc_learning/ui/notification_screen.dart';
import 'package:bloc_learning/utils/bloc_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProvider,
      child: MaterialApp(
        title: 'Bloc Learning',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const NotificationScreen(),
      ),
    );
  }
}
