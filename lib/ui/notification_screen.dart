import 'package:bloc_learning/bloc/slider/slider_bloc.dart';
import 'package:bloc_learning/bloc/switch/switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsive_ui_plus/flutter_responsive_ui.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Notifications",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              BlocBuilder<SwitchBloc, SwitchState>(
                buildWhen: (previous, current) =>
                    previous.isEnabled != current.isEnabled,
                builder: (context, state) {
                  print("SWITCH ");
                  return Switch(
                    value: state.isEnabled,
                    onChanged: (bool value) {
                      context.read<SwitchBloc>().add(
                        value ? EnableSwitch() : DisableSwitch(),
                      );
                    },
                  );
                },
              ),
            ],
          ),

          BlocBuilder<SliderBloc, SliderState>(
            builder: (context, state) {
              context.read<SliderBloc>().add(
                UpdateSlider(sliderValue: state.sliderValue),
              );
              print("CONTAINER ");
              return Container(
                height: 300,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: EdgeInsets.all(10),

                decoration: BoxDecoration(
                  color: Colors.purple.withOpacity(state.sliderValue),
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            },
          ),

          BlocBuilder<SliderBloc, SliderState>(
            builder: (context, state) {
              print("SLIDER ");
              print("------------------");
              return Slider(
                value: state.sliderValue,

                onChanged: (double value) {
                  context.read<SliderBloc>().add(
                    UpdateSlider(sliderValue: value),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
