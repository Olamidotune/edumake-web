import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConnectWardDialog extends StatefulWidget {
  const ConnectWardDialog({
    required this.studentName,
    required this.schoolName,
    required this.className,
    required this.busy,
    required this.onRelationSelected,
    super.key,
    this.onTap,
  });

  final String studentName;
  final String schoolName;
  final String className;
  final void Function()? onTap;
  final void Function(String) onRelationSelected;
  final bool busy;

  @override
  State<ConnectWardDialog> createState() => _ConnectWardDialogState();
}

class _ConnectWardDialogState extends State<ConnectWardDialog> {
  @override
  Widget build(BuildContext context) {
    String? selectedRelation;
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          AppSpacing.verticalSpaceMassive,
          SvgPicture.asset(
            'assets/svg/people.svg',
            height: 100,
          ),
          AppSpacing.verticalSpaceSmall,
          Text(
            widget.studentName,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
                ),
          ),
          AppSpacing.verticalSpaceSmall,
          Row(
            children: [
              SvgPicture.asset(
                'assets/svg/grad_cap.svg',
                height: 12.fontSize,
              ),
              AppSpacing.horizontalSpaceTiny,
              Text(
                widget.schoolName,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w400, fontSize: 12.fontSize),
              ),
            ],
          ),
          AppSpacing.verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star_border_outlined,
                color: AppColors.primaryColor,
                size: 15.fontSize,
              ),
              AppSpacing.horizontalSpaceTiny,
              Text(
                widget.className,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        AppSpacing.verticalSpaceLarge,
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Relationship with Student.',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(fontWeight: FontWeight.w400, fontSize: 12.fontSize),
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        RelationDropdown(
          onChanged: (String? newValue) {
            setState(() {
              selectedRelation = newValue;
            });
            if (newValue != null) {
              widget.onRelationSelected(newValue);
            }
          },
          value: selectedRelation,
        ),
        AppSpacing.verticalSpaceLarge,
        Button(
          busy: widget.busy,
          text: 'Connect Account',
          onPressed: widget.onTap,
        ),
        AppSpacing.verticalSpaceLarge,
      ],
    );
  }
}

class RelationDropdown extends StatelessWidget {
  const RelationDropdown({
    required this.value,
    required this.onChanged,
    super.key,
    this.errorText,
  });
  final String? value;
  final ValueChanged<String?> onChanged;
  final String? errorText;

  static const List<String> relations = [
    'Father',
    'Mother',
    'Step-Father',
    'Step-Mother',
    'Guardian',
    'Uncle',
    'Aunt',
    'Brother',
    'Sister',
    'Foster Parent',
    'Other Family Member',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: DropdownButtonFormField<String>(
        value: value,
        hint: const Text('Select Relationship'),
        isExpanded: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.primaryColor.withOpacity(0.1),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          errorText: errorText,
        ),
        items: relations.map((String relation) {
          return DropdownMenuItem<String>(
            value: relation,
            child: Text(
              relation,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.w400, fontSize: 12.fontSize),
            ),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
