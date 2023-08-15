import 'package:camera_gallery_assignment/pages/homepage.dart';
import 'package:camera_gallery_assignment/utils/route_name/route_name.dart';
import 'package:flutter/material.dart';

import '../components/column_details/column_details.dart';
import '../components/profile_image_picker/profile_image_picker.dart';
import '../components/show_camera_gallery_image_bottomsheet/show_camera_gallery_image_bottomsheet.dart';
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
          onTap: (){
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: 'Flutter Camera Gallery Permission')), );
            // Navigator.pushNamed(context, RouteName.HOMEPAGE);
          },
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
          padding: EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ImagePickerProfile(),
              SizedBox(
                height: 50,
              ),
              DetailsColumn(),
            ],
          ),
        ),
      ),
    );
  }
}
