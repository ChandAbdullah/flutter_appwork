import 'package:flutter/material.dart';
import 'package:task_manager/constants/app_constants.dart';
import 'package:task_manager/screens/side_nav/components/selections.dart';
import 'package:task_manager/screens/side_nav/components/user_profile.dart';

class SideNav extends StatelessWidget {
  const SideNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const UserProfile(),
        Selection(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding * 2),
          child: Divider(
            color: Colors.grey.withOpacity(.5),
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
