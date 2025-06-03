import 'package:flutter/material.dart';
import 'package:whatsapp/core/utils/color_func.dart';

class FilterList extends StatefulWidget {
  const FilterList({super.key});

  @override
  State<FilterList> createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  List<String> filters = ['الكل', 'غير مقروءة', 'المفضلة', 'المجموعات'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(filters.length, (index) {
          return FilterChip(
            shape: StadiumBorder(),
            label: Text(filters[index]),
            selected: selectedIndex == index,
            onSelected: (_) {
              setState(() {
                selectedIndex = index;
              });
            },
            backgroundColor: colorApp.SecondColor,
            selectedColor: colorApp.MainColor,
            labelStyle: TextStyle(
              color: colorApp.Black,
              fontWeight: FontWeight.bold,
            ),
          );
        }),
      ),
    );
  }
}
