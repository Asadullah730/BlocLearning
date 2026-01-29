import 'package:bloc_learning/bloc/image_picker/image_picker_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsive_ui_plus/flutter_responsive_ui.dart';

class ImagePickerScreen extends StatelessWidget {
  const ImagePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pick Image From Camera ",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    context.read<ImagePickerBloc>().add(PickImageFromCamera());
                  },
                  icon: Icon(Icons.browse_gallery),
                  hoverColor: Colors.green,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pick Image From Gallery",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
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
            ),
          ],
        ),
      ),
    );
  }
}
