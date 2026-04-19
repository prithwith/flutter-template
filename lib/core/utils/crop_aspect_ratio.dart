import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:flutter_template/core/utils/toast.dart';

Future<CroppedFile?> cropImageSelection({
  required BuildContext context,
  required String sourcePath,
}) async {
  try {
    return await ImageCropper().cropImage(
      sourcePath: sourcePath,
      maxWidth: 1080,
      maxHeight: 1080,
      compressFormat: ImageCompressFormat.jpg,
      compressQuality: 90,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Crop Image',
          toolbarColor: Colors.blue,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.square,
          lockAspectRatio: false,
          aspectRatioPresets: [
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.square,
            CropAspectRatioPreset.ratio3x2,
            CropAspectRatioPreset.ratio4x3,
            CropAspectRatioPreset.ratio16x9,
            CropAspectRatioPresetCustom(),
          ],
        ),
        IOSUiSettings(
          title: 'Crop Image',
          aspectRatioLockEnabled: false,
          aspectRatioPresets: [
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.square,
            CropAspectRatioPresetCustom(),
          ],
        ),
      ],
    );
  } catch (e) {
    showToastMessage('Image crop failed');
    return null;
  }
}

/// Custom aspect ratio preset (2:3)
class CropAspectRatioPresetCustom implements CropAspectRatioPresetData {
  @override
  (int, int)? get data => (2, 3);

  @override
  String get name => '2x3 (customized)';
}
