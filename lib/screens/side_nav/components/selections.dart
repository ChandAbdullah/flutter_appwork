import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/constants/app_constants.dart';
import 'package:task_manager/constants/colors.dart';
import 'package:task_manager/constants/spaces.dart';
import 'package:get/get.dart';
import 'package:task_manager/models/models.dart';

class Selection extends StatelessWidget {
  Selection({Key? key}) : super(key: key);

  RxInt selectedIndex = 0.obs;

  List<selectionData> selectionList = const [
    selectionData(
      icon: EvaIcons.home,
      selectedIcon: EvaIcons.homeOutline,
      text: "Dashboard",
      notifications: 0,
    ),
    selectionData(
      icon: EvaIcons.bell,
      selectedIcon: EvaIcons.bellOutline,
      text: "Notification",
      notifications: 100,
    ),
    selectionData(
      icon: EvaIcons.checkmarkCircle2,
      selectedIcon: EvaIcons.checkmarkCircle2Outline,
      text: "Tasks",
      notifications: 20,
    ),
    selectionData(
      icon: EvaIcons.settings2,
      selectedIcon: EvaIcons.settings2Outline,
      text: "Settings",
      notifications: 0,
    ),
    // selectionData(
    //   icon: EvaIcons.logOut,
    //   selectedIcon: EvaIcons.logOutOutline,
    //   text: "Log out",
    //   notifications: 0,
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Column(
        children: List.generate(selectionList.length, (index) {
          return _row(
            selectionList[index],
            index,
          );
        }),
      ),
    );
  }

  Widget _row(selectionData item, int index) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(kBorderRadius),
          onTap: () {
            selectedIndex.value = index;
            print(selectedIndex);
          },
          child: Obx(
            () => Container(
              padding: const EdgeInsets.all(kPadding),
              decoration: BoxDecoration(
                color: selectedIndex.value == index
                    ? AppColors.primaryColor.withOpacity(.2)
                    : null,
                borderRadius: BorderRadius.circular(kBorderRadius),
              ),
              child: Row(
                children: [
                  Icon(
                    selectedIndex.value == index
                        ? item.icon
                        : item.selectedIcon,
                    color: item.text != 'Log out'
                        ? selectedIndex.value == index
                            ? AppColors.primaryColor
                            : Colors.black
                        : Colors.red,
                  ),
                  const SpaceW8(),
                  Expanded(
                    child: Text(
                      item.text,
                      style: TextStyle(
                        color: item.text != 'Log out'
                            ? selectedIndex.value == index
                                ? AppColors.primaryColor
                                : Colors.black
                            : Colors.red,
                      ),
                    ),
                  ),
                  item.notifications != 0
                      ? Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(kBorderRadius),
                              bottomLeft: Radius.circular(kBorderRadius),
                              bottomRight: Radius.circular(kBorderRadius),
                            ),
                          ),
                          child: Text(
                            item.notifications > 99
                                ? '99+'
                                : item.notifications.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        )
                      : Container()
                ],
              ),
            ),
          ),
        ),
        (index == selectionList.length - 2 &&
                selectionList[selectionList.length - 1].text == 'Log out')
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding * 2),
                child: Divider(
                  color: Colors.grey.withOpacity(.5),
                  thickness: 1,
                ),
              )
            : Container(),
      ],
    );
  }
}
