import 'package:bloc_learning/bloc/counter/counter_bloc.dart';
import 'package:bloc_learning/bloc/image_picker/image_picker_bloc.dart';
import 'package:bloc_learning/bloc/slider/slider_bloc.dart';
import 'package:bloc_learning/bloc/switch/switch_bloc.dart';
import 'package:bloc_learning/ui/image_picker_screen.dart';
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
      providers: [
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => SwitchBloc()),
        BlocProvider(create: (context) => SliderBloc()),
        BlocProvider(create: (context) => ImagePickerBloc()),
      ],

      child: MaterialApp(
        title: 'Bloc Learning',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const ImagePickerScreen(),
      ),
    );
  }
}
