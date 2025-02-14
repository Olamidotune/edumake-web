import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/datum.dart';
import 'package:flutter/material.dart';

class MultiClassDropdown extends StatefulWidget {
  const MultiClassDropdown({
    required this.classes,
    required this.onClassesSelected,
    super.key,
  });

  final List<Datum> classes;
  final void Function(List<String>) onClassesSelected;

  @override
  State<MultiClassDropdown> createState() => _MultiClassDropdownState();
}

class _MultiClassDropdownState extends State<MultiClassDropdown> {
  final Set<String> _selectedIds = {};

  // Generate a consistent color based on the class name
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
              ? 'Select Recipients'
              : '${_selectedIds.length} classes selected',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.primaryTextColor,
                fontWeight: FontWeight.w300,
                fontSize: 12.fontSize,
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
                      value: _selectedIds.length == widget.classes.length,
                      tristate: true,
                      onChanged: (bool? value) {
                        setState(() {
                          if (value ?? false) {
                            _selectedIds.addAll(
                              widget.classes.map((c) => c.id),
                            );
                          } else {
                            _selectedIds.clear();
                          }
                          widget.onClassesSelected(_selectedIds.toList());
                        });
                      },
                    ),
                    title: const Text('Select All'),
                    onTap: () {
                      setState(() {
                        if (_selectedIds.length == widget.classes.length) {
                          _selectedIds.clear();
                        } else {
                          _selectedIds.addAll(
                            widget.classes.map((c) => c.id),
                          );
                        }
                        widget.onClassesSelected(_selectedIds.toList());
                      });
                    },
                  ),
                  const Divider(),
                  // Individual class options
                  ...widget.classes.map((classData) => ListTile(
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
                              widget.onClassesSelected(_selectedIds.toList());
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
                            widget.onClassesSelected(_selectedIds.toList());
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
                      widget.classes.firstWhere((c) => c.id == id);
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
                        widget.onClassesSelected(_selectedIds.toList());
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
