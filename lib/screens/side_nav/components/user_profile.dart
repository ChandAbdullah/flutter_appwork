import 'package:flutter/material.dart';
import 'package:task_manager/constants/app_constants.dart';
import 'package:task_manager/constants/colors.dart';
import 'package:task_manager/constants/images_path.dart';
import 'package:task_manager/constants/spaces.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(kBorderRadius),
        child: Padding(
          padding: const EdgeInsets.all(kPadding),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(ImagePaths.man),
              ),
              const SpaceW8(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Chand Abdullah",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColors.darkText,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "chandabdullah.nls@gmail.com",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColors.mediumText,
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
