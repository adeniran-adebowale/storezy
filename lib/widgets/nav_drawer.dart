import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storezy/constants/colors.dart';
import 'package:storezy/widgets/reusable_List_Tile.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Center(
            child: Text(
              'Storezy',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
          )),
          ReusableListTile(
              title: 'Change Store Name',
              icon: Icons.change_circle_sharp,
              iconColor:
                  Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
              textColor:
                  Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
              onPressed: () {
                Get.toNamed('/changeStoreName');
              }),
          ReusableListTile(
              title: 'Add followers',
              icon: Icons.add_reaction_sharp,
              iconColor:
                  Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
              textColor:
                  Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
              onPressed: () {
                Get.toNamed('/addFollowers');
              }),
          ReusableListTile(
              title: 'Increment Followers',
              icon: Icons.add_task_sharp,
              iconColor:
                  Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
              textColor:
                  Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
              onPressed: () {
                Get.toNamed('/incrementFollowers');
              }),
          ReusableListTile(
              title: 'Toggle Store Status',
              icon: Icons.toggle_on_sharp,
              iconColor:
                  Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
              textColor:
                  Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
              onPressed: () {
                Get.toNamed('/toggleStore');
              }),
          ReusableListTile(
              title: 'Add Reviews',
              icon: Icons.add_comment_sharp,
              iconColor:
                  Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
              textColor:
                  Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
              onPressed: () {
                Get.toNamed('/addReviews');
              }),
        ],
      ),
    );
  }
}
