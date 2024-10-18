import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = 'home_Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            Expanded(
              flex: 2,
              child: CircleAvatar(
                radius: 20.width,
                backgroundColor: AppColors.greyColor,
                child: Text(
                  'DE',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontFamily: 'HelveticaNeueRounded',
                        fontSize: 12.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryTextColor,
                      ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: RichText(
                text: TextSpan(
                  text: ' Hello ',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontFamily: 'HelveticaNeueRounded',
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w300,
                        color: AppColors.primaryTextColor,
                      ),
                  children: [
                    TextSpan(
                      text: 'David Egundeyi,',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'HelveticaNeueRounded',
                            fontSize: 16.fontSize,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              'assets/svg/chat.svg',
              height: 20.height,
              width: 50.width,
            ),
          ),
          AppSpacing.horizontalSpaceMedium,
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              'assets/svg/notification.svg',
              height: 25.height,
              width: 50.width,
            ),
          ),
          AppSpacing.horizontalSpaceMedium,
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(55.h),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                fillColor: AppColors.greyColor.withOpacity(0.1),
                filled: true,
                hintText: "search with school's name or pupil's name",
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 10.fontSize,
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w200,
                    ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SvgPicture.asset(
                    'assets/svg/search.svg',
                    color: AppColors.greyColor.withOpacity(1),
                  ),
                ),
                suffixIcon: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: AppColors.whiteColor,
                        ),
                        onPressed: () {},
                      ),
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
