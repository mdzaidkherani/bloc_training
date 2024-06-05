import 'package:equatable/equatable.dart';

abstract class ImagePickerEvent extends Equatable{

  ImagePickerEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class PickImageFromGallery extends ImagePickerEvent{}