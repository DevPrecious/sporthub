import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:sporthub/constants/colors.dart';
import 'package:sporthub/pages/auth/widgets/auth_text_field.dart';
import 'package:sporthub/widgets/primary_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpBottomSheet extends StatelessWidget {
  const OtpBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 330.w,
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
            'Verify Email',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.sp,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 2.h),
          RichText(
            text: TextSpan(
              text: '4 digit OTP verification mail was sent to',
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: ' oladelep77@gmail.com',
                  style: TextStyle(
                    color: selectedColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: double.infinity,
            child: OtpPinField(
              onSubmit: (val) {},
              onChange: (val) {},
              textInputAction: TextInputAction.done,
              maxLength: 4,
              showCursor: true,
              otpPinFieldStyle: OtpPinFieldStyle(
                textStyle: TextStyle(color: Colors.white, fontSize: 20.sp),
                fieldBorderRadius: 20.0,
                defaultFieldBackgroundColor: clubBadgeColor,
              ),
              otpPinFieldDecoration:
                  OtpPinFieldDecoration.defaultPinBoxDecoration,
            ),
          ),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Didn't receive the code? ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
              ),
              Container(
                width: 150.w,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: selectedColor.withOpacity(.2),
                ),
                child: Row(
                  children: [
                    HeroIcon(
                      HeroIcons.arrowPath,
                      color: selectedColor,
                    ),
                    SizedBox(width: 20.w,),
                    Text(
                      'Resend code',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
