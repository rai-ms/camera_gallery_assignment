import 'package:flutter/material.dart';

import '../components/column_details/column_details.dart';
import '../components/profile_image_picker/profile_image_picker.dart';
import '../constants/app_color.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.GREEN_BACKGROUND,
        leading: InkWell(
          onTap: (){},
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Profile",
              style: TextStyle(color: Colors.white, fontSize: 25),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ImagePickerProfile(),
              const SizedBox(
                height: 50,
              ),
              const DetailsColumn(),
            ],
          ),
        ),
      ),
    );
  }
}
