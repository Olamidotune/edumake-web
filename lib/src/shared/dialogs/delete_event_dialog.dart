import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/events/events_bloc.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class DeleteEventDialog extends StatelessWidget {
  const DeleteEventDialog({required this.eventId, super.key});
  final String eventId;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/svg/error.svg'),
          AppSpacing.verticalSpaceMedium,
          Text(
            'Are you sure you want to delete this event? This action cannot be undone.',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w300,
                ),
            textAlign: TextAlign.center,
          ),
          AppSpacing.verticalSpaceMedium,
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Button(
                buttonColor: AppColors.primaryColor.withOpacity(0.3),
                textColor: AppColors.secondaryTexColor,
                text: 'Yes',
                onPressed: () {
                  context.read<EventsBloc>().add(
                        EventsEvent.deleteEvent(eventId),
                      );
                  Navigator.of(context).pop();
                },
              ),
            ),
            AppSpacing.horizontalSpaceMedium,
            Expanded(
              child: Button(
                text: 'No',
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
