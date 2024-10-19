import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/student_list.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/announcement_card.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/teachers_note.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/your_ward_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  static const String routeName = 'home_Screen';

  final ScrollController _scrollController = ScrollController();
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
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: AppColors.whiteColor,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: RawScrollbar(
        thumbColor: AppColors.primaryColor.withOpacity(0.6),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            child: Column(
              children: [
                Text(
                  'Your Ward',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                const YourWardCard(
                  profilePic: '',
                  wardName: 'David Egundeyi',
                  schoolName: 'Edumake',
                  wardClass: 'JSS 1',
                  assignmentNum: '3',
                ),
                AppSpacing.verticalSpaceMedium,
                YourWardCard(
                  profilePic: '',
                  wardName: 'David Egundeyi',
                  schoolName: studentList.length.toString(),
                  wardClass: 'JSS 1',
                  assignmentNum: '8',
                ),
                AppSpacing.verticalSpaceMedium,
                const YourWardCard(
                  profilePic: '',
                  wardName: '',
                  schoolName: '',
                  wardClass: '',
                  assignmentNum: '',
                ),
                AppSpacing.verticalSpaceMedium,
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '3 More',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Upcoming Events',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor,
                        ),
                  ),
                ),
                AppSpacing.verticalSpaceSmall,
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height <
                                kMinSupportedHeight
                            ? 250.height
                            : 215.height,
                        constraints: BoxConstraints(
                          maxWidth: 180.width,
                        ),
                        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                        decoration: BoxDecoration(
                          color: AppColors.purpleColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.greyColor.withOpacity(0.7),
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: const Offset(1, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 7,
                              child: Image.asset(
                                'assets/png/girl running.png',
                                height: 110.h,
                                width: double.infinity,
                              ),
                            ),
                            AppSpacing.verticalSpaceMedium,
                            Expanded(
                              flex: 6,
                              child: Text(
                                'Students will have the opportunity to participate in various sports and activities. We encourage everyone to come out and support our young athletes!',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontSize: 10.fontSize,
                                      color: AppColors.primaryTextColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          AnnouncementCard(
                            title: 'Sports Day',
                            description:
                                'School general continuous assessment, to hold for a week starting from Monday, 13th feb 2023.',
                            color: AppColors.redColor.withOpacity(0.3),
                          ),
                          AppSpacing.verticalSpaceMedium,
                          AnnouncementCard(
                            title: 'Cutural Day',
                            description:
                                'This event will showcase the rich diversity of our school through performances, food, and displays representing various cultures...',
                            color: AppColors.greenColor.withOpacity(0.3),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'View all events',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Teacher's Note (Recent)",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor,
                        ),
                  ),
                ),
                AppSpacing.verticalSpaceSmall,
                const TeachersNote(
                  description:
                      'I wanted to bring to your attention that Maryann has been consistently falling asleep during class. This is affecting their participation and ability to keep up with the class. Please ensure they get enough rest at home.',
                  date: 'Today 4:20',
                  teacher: 'Deborah Ani',
                  subject: 'Social',
                  wardName: 'Samuel Egundeyi',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
