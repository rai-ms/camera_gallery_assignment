import 'dart:io';

import 'package:flutter/material.dart';

import '../../constants/app_color.dart';
import '../../constants/constants.dart';

class ImagePickerProfile extends StatelessWidget {
  /// This class is used to fetch image using camera and gallery
   ImagePickerProfile({super.key});

  File? selectedImage;

 // Store the selected image here
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 210,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          AppConstantsCameraGallery.imagePathUserProfile != null?
              CircleAvatar(
                radius: 100,
                backgroundImage:  FileImage(AppConstantsCameraGallery.imagePathUserProfile!) ,// Use FileImage to convert File to ImageProvider
              ):
          const CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage("https://images.thequint.com/thequint%2F2022-08%2Fd041c371-5ecd-4c71-b417-ff490feec59c%2FiStock_1194408359.jpg")),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 50,
              margin: const EdgeInsets.only(bottom: 20),
              width: 50,
              decoration: BoxDecoration(
                  color: AppColor.GREEN_BACKGROUND,
                  borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                onPressed: () async {
                  // Show the bottom sheet and wait for the result (selected image)
                },
                icon: const Icon(Icons.camera_alt_rounded),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
