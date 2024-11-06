import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:sporthub/constants/colors.dart';
import 'package:sporthub/pages/auth/club_controller.dart';
import 'package:sporthub/pages/auth/widgets/auth_text_field.dart';
import 'package:sporthub/pages/auth/widgets/register_bottom_sheet_widget.dart';
import 'package:sporthub/widgets/background_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sporthub/widgets/primary_button.dart';

class ChooseClubPage extends StatefulWidget {
  const ChooseClubPage({super.key});

  @override
  State<ChooseClubPage> createState() => _ChooseClubPageState();
}

class _ChooseClubPageState extends State<ChooseClubPage> {
  List clubs = [
    [0, 'assets/images/barca.png', 'FC Barcelona'],
    [1, 'assets/images/real.png', 'Real Madrid'],
    [2, 'assets/images/arsenal.png', 'Arsenal'],
    [3, 'assets/images/juventus.png', 'Juventus'],
  ];

  final ClubController _clubController = Get.put(ClubController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: BackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose Your Best\nClub',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.sp,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'You can not choose more than one club',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 16.sp,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 20.h),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // 3 columns in the grid
                    crossAxisSpacing: 8.0, // Horizontal space between items
                    mainAxisSpacing: 8.0, // Vertical space between items
                  ),
                  itemCount: clubs.length, // 9 items in total for a 3x3 grid
                  itemBuilder: (context, index) {
                    return Obx(() {
                      return GestureDetector(
                        onTap: () => _clubController.setSelectedIndex(index),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                color:
                                    _clubController.selectedIndex.value == index
                                        ? selectedColor
                                        : clubBadgeColor,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                      clubs[index][1],
                                    ),
                                    fit: BoxFit.contain),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              clubs[index][2],
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      );
                    });
                  },
                ),
                Spacer(),
                SizedBox(
                  height: 60.h,
                  width: double.infinity,
                  child: RegisterBottomSheetWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

