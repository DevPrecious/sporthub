import 'package:flutter/material.dart';
import 'package:sporthub/constants/colors.dart';
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
    ['assets/images/barca.png', 'FC Barcelona'],
    ['assets/images/real.png', 'Real Madrid'],
    ['assets/images/arsenal.png', 'Arsenal'],
    ['assets/images/juventus.png', 'Juventus'],
  ];

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
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            color: clubBadgeColor,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  clubs[index][0],
                                ),
                                fit: BoxFit.contain),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          clubs[index][1],
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    );
                  },
                ),
                Spacer(),
                SizedBox(
                  height: 60.h,
                  width: double.infinity,
                  child: PrimaryButton(
                    onPressed: () {},
                    text: 'Continue',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
