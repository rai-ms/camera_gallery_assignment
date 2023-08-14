import 'package:camera_gallery_assignment/constants/app_color.dart';
import 'package:flutter/material.dart';

import '../../constants/app_string.dart';

class DetailsColumn extends StatelessWidget {
  const DetailsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.NAME,
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(AppStrings.USER_NAME),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                  Icon(
                    Icons.edit,
                    color: AppColor.GREEN_BACKGROUND,
                  )
                ],
              ),
              Text(
                AppStrings.DESC,
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.info_outline,
            color: Colors.grey,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.ABOUT,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text("🇮🇳🇮🇳🇮🇳"),
                ],
              ),
              Icon(
                Icons.edit,
                color: AppColor.GREEN_BACKGROUND,
              )
            ],
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.call,
            color: Colors.grey,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.PHONE,
                style: TextStyle(color: Colors.grey),
              ),
              Text(AppStrings.CONTACT_NUMBER),
            ],
          ),
        ),
      ],
    );
  }
}
