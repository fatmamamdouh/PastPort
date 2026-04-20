import 'package:flutter/material.dart';

class SelectProblemCategoryList extends StatefulWidget {
  const SelectProblemCategoryList({super.key});

  @override
  State<SelectProblemCategoryList> createState() => _SelectProblemCategoryListState();
}

class _SelectProblemCategoryListState extends State<SelectProblemCategoryList> {
  String? selectedCategory;

  final categories = [
    'Account Issues',
    'Payment Problems',
    'Technical Bugs',
    'Performance Issues',
    'Feature Not Working',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: const Color(0xffEEF1F7),
          borderRadius: BorderRadius.circular(8),
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Problem Category",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 10),

            DropdownMenu<String>(
              width: 290,
              initialSelection: selectedCategory,
              hintText: "Select a category",

              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: const Color(0xffDCE1EC),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide.none,
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide.none,
                ),
              ),

              dropdownMenuEntries: categories.map((item) {
                return DropdownMenuEntry(
                  value: item,
                  label: item,
                );
              }).toList(),

              onSelected: (value) {
                setState(() {
                  selectedCategory = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}