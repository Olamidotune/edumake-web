import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/datum.dart';
import 'package:flutter/material.dart';

class MultiSubjectDropDown extends StatefulWidget {
  const MultiSubjectDropDown({
    required this.subjects,
    required this.onSubjectSelected,
    this.isDesktop = false,
    super.key,
  });

  final List<Datum> subjects;
  final void Function(List<String>) onSubjectSelected;
  final bool isDesktop;

  @override
  State<MultiSubjectDropDown> createState() => _MultiSubjectDropDownState();
}

class _MultiSubjectDropDownState extends State<MultiSubjectDropDown> {
  final Set<String> _selectedIds = {};

  // Generate a consistent color based on the subject name
  Color _getChipColor(String name) {
    final colors = [
      Colors.blue.shade100,
      Colors.green.shade100,
      Colors.purple.shade100,
      Colors.orange.shade100,
      Colors.pink.shade100,
      Colors.teal.shade100,
      Colors.indigo.shade100,
    ];

    // Use the string's hashCode to pick a color
    final colorIndex = name.hashCode.abs() % colors.length;
    return colors[colorIndex];
  }

  // Get darker shade for the label text
  Color _getTextColor(String name) {
    final colors = [
      Colors.blue.shade900,
      Colors.green.shade900,
      Colors.purple.shade900,
      Colors.orange.shade900,
      Colors.pink.shade900,
      Colors.teal.shade900,
      Colors.indigo.shade900,
    ];

    final colorIndex = name.hashCode.abs() % colors.length;
    return colors[colorIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.greyColor.withOpacity(.1),
        border: Border.all(
          color: AppColors.greyColor.withOpacity(.1),
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: ExpansionTile(
        title: Text(
          _selectedIds.isEmpty
              ? 'Select Subjects'
              : '${_selectedIds.length} subject selected',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.primaryTextColor,
                fontWeight: FontWeight.w300,
                fontSize: widget.isDesktop ? 16 : 12.fontSize,
              ),
        ),
        children: [
          Container(
            constraints: const BoxConstraints(maxHeight: 300),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // "Select All" option
                  ListTile(
                    leading: Checkbox(
                      value: _selectedIds.length == widget.subjects.length,
                      tristate: true,
                      onChanged: (bool? value) {
                        setState(() {
                          if (value ?? false) {
                            _selectedIds.addAll(
                              widget.subjects.map((s) => s.id),
                            );
                          } else {
                            _selectedIds.clear();
                          }
                          widget.onSubjectSelected(_selectedIds.toList());
                        });
                      },
                    ),
                    title: const Text('Select All'),
                    onTap: () {
                      setState(() {
                        if (_selectedIds.length == widget.subjects.length) {
                          _selectedIds.clear();
                        } else {
                          _selectedIds.addAll(
                            widget.subjects.map((s) => s.id),
                          );
                        }
                        widget.onSubjectSelected(_selectedIds.toList());
                      });
                    },
                  ),
                  const Divider(),
                  // Individual class options
                  ...widget.subjects.map((classData) => ListTile(
                        leading: Checkbox(
                          activeColor: AppColors.primaryColor,
                          value: _selectedIds.contains(classData.id),
                          onChanged: (bool? value) {
                            setState(() {
                              if (value ?? false) {
                                _selectedIds.add(classData.id);
                              } else {
                                _selectedIds.remove(classData.id);
                              }
                              widget.onSubjectSelected(_selectedIds.toList());
                            });
                          },
                        ),
                        title: Text(classData.name),
                        onTap: () {
                          setState(() {
                            if (_selectedIds.contains(classData.id)) {
                              _selectedIds.remove(classData.id);
                            } else {
                              _selectedIds.add(classData.id);
                            }
                            widget.onSubjectSelected(_selectedIds.toList());
                          });
                        },
                      )),
                ],
              ),
            ),
          ),
          // Selected items chips
          if (_selectedIds.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(8),
              child: Wrap(
                spacing: 8,
                runSpacing: 4,
                children: _selectedIds.map((id) {
                  final classData =
                      widget.subjects.firstWhere((s) => s.id == id);
                  return Chip(
                    label: Text(
                      classData.name,
                      style: TextStyle(
                        color: _getTextColor(classData.name),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    backgroundColor: _getChipColor(classData.name),
                    deleteIconColor: _getTextColor(classData.name),
                    onDeleted: () {
                      setState(() {
                        _selectedIds.remove(id);
                        widget.onSubjectSelected(_selectedIds.toList());
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
