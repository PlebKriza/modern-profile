import 'package:flutter/material.dart';
import 'package:mycool_profile/components/profile_img.dart';
import 'package:mycool_profile/components/profile_menu.dart';
import 'package:mycool_profile/constant/cnstant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // the Scaffold is used for the nav part
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 24,
          color: iconSecondaryColor,
        ), //we used Icons instead of Iconsax because it doesn't work
        title: Center(
            child: Text(
          'Profile',
          style: textTitle,
        )),
        actions: const [
          Icon(
            Icons.light_mode,
            size: 26,
            color: iconSecondaryColor,
          ),
          SizedBox(
            width: 15.0,
          )
        ],
      ),
      body: Center(
        child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center, //because this does not work horizontally?
          children: [
            const SizedBox(
              height: 20,
            ),
            //Image_Profile
            const ProfileImage(),
            //Detail Profile
            const SizedBox(
              height: 20,
            ),
            Text(
              'Kriza Claire',
              style: textTitle,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'enstarslol@email.com',
              style: textSubtitle,
            ),

            // Button Edit
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              height: 35,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                // color: Colors.blue,
                child: Center(
                    child: Text(
                  'Edit Profile',
                  style: textBtn,
                )),
              ),
            ),

            //Menu profile
            const SizedBox(
              height: 30,
            ),
             ProfileMenu(title: 'Settings', icons:Icons.settings,),
             const SizedBox(
              height: 10,
             ),
             ProfileMenu(title: 'Billing Details', icons:Icons.wallet,),
             const SizedBox(
              height: 10,
             ),
             ProfileMenu(title: 'User Management', icons:Icons.person_add,),
             const SizedBox(
              height: 50,
             ),
            ProfileMenu(title: 'Information', icons: Icons.info_outline,),
            const SizedBox(
              height: 10,
            ),
            ProfileMenu(title: 'Logout', icons: Icons.logout,),
            
          ],
        ),
      ),
    );
  }
}

