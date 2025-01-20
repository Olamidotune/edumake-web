import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:flutter/material.dart';

class WeeklyAssignmentContainer extends StatelessWidget {
  const WeeklyAssignmentContainer({
    required this.title,
    required this.dateAssigned,
    required this.dueDate,
    this.isLocked = false,
    this.isCompleted = false,
    this.grade,
    Key? key,
    this.onTap,
  }) : super(key: key);
  final String title;
  final String dateAssigned;
  final String dueDate;
  final bool isLocked;
  final bool isCompleted;
  final String? grade;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.greyColor,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isLocked
                ? Colors.grey.withOpacity(0.3)
                : isCompleted
                    ? Colors.green
                    : AppColors.greyColor,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              isLocked
                  ? Icons.lock
                  : isCompleted
                      ? Icons.check_circle_outline
                      : Icons.assignment,
              color: isLocked
                  ? Colors.grey
                  : isCompleted
                      ? Colors.green
                      : Colors.blue,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Weekly assignment: $title',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Date Assigned: $dateAssigned',
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      border: Border.all(
                        color: isLocked
                            ? Colors.grey.withOpacity(0.3)
                            : isCompleted
                                ? Colors.green
                                : AppColors.goldColor,
                      ),
                    ),
                    child: Text(
                      isCompleted
                          ? "Grade: ${grade ?? 'N/A'}"
                          : 'Due on: $dueDate',
                      style: TextStyle(
                        fontSize: 14,
                        color: isCompleted ? Colors.green : Colors.orange,
                      ),
                    ),
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
