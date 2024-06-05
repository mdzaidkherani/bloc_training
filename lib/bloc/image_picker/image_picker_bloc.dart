import 'package:bloc_training/bloc/image_picker/image_picker_event.dart';
import 'package:bloc_training/bloc/image_picker/image_picker_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent,ImagePickerState>{

  ImagePickerBloc(): super(ImagePickerState()){
    on<PickImageFromGallery>(_pickImage);
  }

  void _pickImage(event,state) async {
    ImagePicker _picker = ImagePicker();
    var file = await _picker.pickImage(source: ImageSource.gallery);
    emit(state.copyWrite(file: file));
  }

}