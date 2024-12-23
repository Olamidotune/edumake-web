import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_classes_screen.dart';
import 'package:edumake_frontend/src/shared/services/shared_prefercences.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  static const String routeName = '/payment';

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final ScrollController scrollController = ScrollController();
  late Future<UserRole> userRoleFuture;

  @override
  void initState() {
    super.initState();
    userRoleFuture = userRole();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
        left: false,
        right: false,
        child: RawScrollbar(
          controller: scrollController,
          thumbColor: AppColors.primaryColor.withOpacity(0.4),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          padding: const EdgeInsets.only(
            left: 10,
            right: 5,
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
              child: buildView(
                userRoleFuture,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildView(
    Future<UserRole> userRoleFuture,
  ) {
    return FutureBuilder<UserRole>(
      future: userRoleFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return const Center(
            child: Text('An error occurred while loading data'),
          );
        }

        final role = snapshot.data;

        if (role == UserRole.parentStudent) {
          return const Center(child: Text('Parent Student'));
        } else if (role == UserRole.teacher) {
          return const Center(child: Text('Teacher'));
        }
        return const ClassScreen();
      },
    );
  }
}

Future<UserRole> userRole() async {
  final role = await UserRoleHelper.getUserRole();
  return role ?? UserRole.parentStudent;
}
