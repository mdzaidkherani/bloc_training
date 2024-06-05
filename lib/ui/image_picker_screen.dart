import 'package:bloc_training/bloc/image_picker/image_picker_bloc.dart';
import 'package:bloc_training/bloc/image_picker/image_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/image_picker/image_picker_event.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ImagePickerBloc,ImagePickerState>(
        builder: (context,state){
          if(state.file == null){
            return Center(
              child: ElevatedButton(
                onPressed: (){
                  context.read<ImagePickerBloc>().add(PickImageFromGallery());
                },
                child: Icon(Icons.camera),
              ),
            );
          }
          else{
            return Image.network(state.file!.path);
          }

        },
      ),
    );
  }
}
