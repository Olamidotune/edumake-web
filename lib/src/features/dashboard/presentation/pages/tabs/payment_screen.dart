import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/user.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/parent_payment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/school_classes_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/teacher_payment_screen.dart';
import 'package:edumake_frontend/src/shared/services/auth_services.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  static const String routeName = '/payment';

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final ScrollController scrollController = ScrollController();

  User? _user;

  @override
  void initState() {
    super.initState();
    AuthServices().getUser().then(
          (User user) => setState(() => _user = user),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: SingleChildScrollView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            child: Container(
              child: _buildView(_user),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildView(User? user) {
    final role = user?.role;
    if (role == 'parent') {
      return const ParentPaymentScreen();
    } else if (role == 'teacher') {
      return const TeacherPaymentScreen();
    } else {
      return const ClassScreen();
    }
  }
}
