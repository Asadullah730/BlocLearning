import 'package:bloc_learning/bloc/counter/counter_bloc.dart';
import 'package:bloc_learning/bloc/slider/slider_bloc.dart';
import 'package:bloc_learning/bloc/switch/switch_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BlocProvider> blocProvider = [
  BlocProvider(create: (context) => CounterBloc()),
  BlocProvider(create: (context) => SwitchBloc()),
  BlocProvider(create: (context) => SliderBloc()),
];
