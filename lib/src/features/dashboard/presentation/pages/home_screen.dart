// ignore_for_file: omit_local_variable_types

import 'dart:async';

import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
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
      body: Padding(
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
            Container(
              padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.greyColor.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: const Offset(1, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.greyColor,
                        child: Text(
                          'DE',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryTextColor,
                                  ),
                        ),
                      ),
                      AppSpacing.horizontalSpaceMedium,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Samuel Egundeyi',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primaryTextColor,
                                ),
                          ),
                          Text(
                            'New Delight Secondary School(JSS 1)',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.greyColor,
                                ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '4 New Assignments',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryColor,
                                    fontSize: 8.fontSize,
                                  ),
                              softWrap: false,
                            ),
                            AppSpacing.verticalSpaceMedium,
                            Text(
                              'Fees Paid',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8.fontSize,
                                    color: AppColors.greenColor,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppSpacing.horizontalSpaceMedium,
                      Text(
                        'Last Assignment scores: ',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.primaryColor,
                            ),
                      ),
                      Expanded(
                        child: AutoScrollingText(
                          text:
                              'Maths: 80%, English: 70%, Physics: 60%, Chemistry: 50%, Biology: 40%, Geography: 30%, History: 20%, CRK: 10%',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.greenColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AutoScrollingText extends StatefulWidget {
  const AutoScrollingText({
    required this.text,
    required this.style,
    super.key,
    this.duration = const Duration(seconds: 20),
  });

  final String text;
  final TextStyle style;
  final Duration duration;

  @override
  State<AutoScrollingText> createState() => _AutoScrollingTextState();
}

class _AutoScrollingTextState extends State<AutoScrollingText> {
  late ScrollController _scrollController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startScrolling();
    });
  }

  void _startScrolling() {
    _timer = Timer.periodic(const Duration(milliseconds: 50), (_) {
      if (_scrollController.hasClients) {
        final double maxExtent = _scrollController.position.maxScrollExtent;
        final double currentPosition = _scrollController.offset;
        if (currentPosition >= maxExtent) {
          _scrollController.jumpTo(0);
        } else {
          _scrollController.animateTo(
            currentPosition + 1.0,
            duration: const Duration(milliseconds: 50),
            curve: Curves.linear,
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: _scrollController,
      child: Text(
        widget.text,
        style: widget.style,
      ),
    );
  }
}
