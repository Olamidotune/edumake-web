import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/datum.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class ClassDropdown extends StatelessWidget {
  const ClassDropdown({
    Key? key,
    this.onChanged,
    this.value,
  }) : super(key: key);

  final void Function(String?)? onChanged;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
      builder: (context, state) {
        if (state.fetchClassesStatus == FormzSubmissionStatus.inProgress) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.classesData == null || state.classesData!.isEmpty) {
          return const Text('No classes available');
        }

        return Theme(
          data: Theme.of(context).copyWith(
            scrollbarTheme: ScrollbarThemeData(
              thumbColor: MaterialStateProperty.all(AppColors.primaryColor),
              thickness: MaterialStateProperty.all(6),
              radius: const Radius.circular(8),
              thumbVisibility: MaterialStateProperty.all(true),
            ),
          ),
          child: DropdownButtonFormField<String>(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            isExpanded: true,
            itemHeight: 64,
            menuMaxHeight: 300,
            value: value,
            hint: const Text('Select a class'),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.greyColor.withOpacity(0.1),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
            ),
            items: state.classesData!.map((Datum classData) {
              return DropdownMenuItem<String>(
                value: classData.id,
                child: Text(classData.name),
              );
            }).toList(),
            onChanged: onChanged,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please select a class';
              }
              return null;
            },
          ),
        );
      },
    );
  }
}
