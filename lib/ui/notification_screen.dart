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
                builder: (context, state) {
                  return Switch(
                    value: state.isEnabled,
                    onChanged: (bool value) {
                      context.read<SwitchBloc>().add(
                        value ? EnableNotification() : DisableNotification(),
                      );
                    },
                  );
                },
              ),
            ],
          ),

          Container(
            height: 300,

            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.blueAccent),
          ),

          Slider(
            value: .4,
            onChanged: (double value) {
              value--;
            },
          ),
        ],
      ),
    );
  }
}
