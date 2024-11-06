import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sporthub/constants/colors.dart';
import 'package:sporthub/pages/auth/choose_club.dart';
import 'package:sporthub/pages/onboard/widgets/page_view_container_widget.dart';
import 'package:sporthub/widgets/background_widget.dart';
import 'package:sporthub/widgets/primary_button.dart';

class OnbaordingScreen extends StatefulWidget {
  const OnbaordingScreen({super.key});

  @override
  State<OnbaordingScreen> createState() => _OnbaordingScreenState();
}

class _OnbaordingScreenState extends State<OnbaordingScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: BackgroundWidget(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80.h,),
            Expanded(
              child: PageView(
                controller: controller,
                children: const [
                  PageViewContainerWidget(
                    image: 'assets/images/mbappe.png',
                  ),
                  PageViewContainerWidget(
                    image: 'assets/images/frank.png',
                  ),
                  PageViewContainerWidget(
                    image: 'assets/images/pique.png',
                  ),
                ],
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const WormEffect(
                  dotColor:Colors.white,
                  activeDotColor: Color(0xff594FEF) 
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Discover all about Sport',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Search millions of jobs and get the inside scoop on companies. wait for what? Let’s get start it!',
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 240.w,
                        height: 60.h,
                        child: PrimaryButton(
                          color: primaryColor,
                          onPressed: () {
                            Get.to(() => const ChooseClubPage());
                          },
                        ),
                      ),
                      Text(
                        'SKIP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20.h,),
                ],
              ),
            )
          ],
        ),
        )
      ),
    );
  }
}

