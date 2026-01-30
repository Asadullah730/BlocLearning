import 'dart:io';

import 'package:bloc_learning/bloc/image_picker/image_picker_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatelessWidget {
  const ImagePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ImagePickerBloc, ImagePickerState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pick Image From Camera ",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    state.file == null
                        ? IconButton(
                            onPressed: () {
                              context.read<ImagePickerBloc>().add(
                                PickImageFromCamera(),
                              );
                            },
                            icon: Icon(Icons.browse_gallery),
                            hoverColor: Colors.green,
                          )
                        : GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ShowImageScreen(file: state.file),
                                ),
                              );
                            },
                            child: Image.file(
                              File(state.file!.path),
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                  ],
                ),
                SizedBox(height: 5),
                state.file == null
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pick Image From Gallery",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 20),
                          BlocBuilder<ImagePickerBloc, ImagePickerState>(
                            builder: (context, state) {
                              return IconButton(
                                onPressed: () {
                                  context.read<ImagePickerBloc>().add(
                                    PickImageFromGallery(),
                                  );
                                },
                                icon: Icon(Icons.camera_alt),
                                hoverColor: Colors.blue,
                              );
                            },
                          ),
                        ],
                      )
                    : GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ShowImageScreen(file: state.file),
                            ),
                          );
                        },
                        child: Image.file(
                          File(state.file!.path),
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ShowImageScreen extends StatelessWidget {
  final XFile? file;
  const ShowImageScreen({super.key, this.file});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Show Image")),
      body: Center(
        child: Image.file(
          File(file!.path),
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
