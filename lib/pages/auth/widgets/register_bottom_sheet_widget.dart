import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:sporthub/constants/colors.dart';
import 'package:sporthub/pages/auth/widgets/auth_text_field.dart';
import 'package:sporthub/pages/auth/widgets/otp_bottom_sheet.dart';
import 'package:sporthub/widgets/primary_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterBottomSheetWidget extends StatelessWidget {
  const RegisterBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      onPressed: () {
        Get.bottomSheet(
          Container(
            padding: EdgeInsets.all(16.0),
            height: 450.w,
            width: double.infinity,
            decoration: BoxDecoration(
              color: clubBadgeColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    width: 50.w,
                    child: Divider(
                      thickness: 5,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Hello Mate',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2.h),
                Text(
                  'Create Account',
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.h),
                AuthTextField(
                  text: 'Email',
                  prefixIcon: HeroIcon(
                    HeroIcons.envelope,
                  ),
                  controller: TextEditingController(),
                  isObscureText: false,
                ),
                SizedBox(height: 10.h),
                AuthTextField(
                  text: 'Password',
                  prefixIcon: HeroIcon(
                    HeroIcons.lockClosed,
                  ),
                  controller: TextEditingController(),
                  isObscureText: false,
                  suffixIcon: HeroIcon(
                    HeroIcons.eyeSlash,
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: double.infinity,
                  height: 60.h,
                  child: PrimaryButton(
                    text: 'Sign Up',
                    onPressed: () {
                      // Get.back();
                      Get.bottomSheet(
                        OtpBottomSheet(),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.h),
                RichText(
                  text: TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('clicked');
                              // Get.back();
                              // OtpBottomSheet();
                            },
                        )
                      ]),
                ),
              ],
            ),
          ),
          isScrollControlled: true,
        );
      },
      text: 'Continue',
    );
  }
}
