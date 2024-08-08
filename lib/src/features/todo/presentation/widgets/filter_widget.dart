import 'package:flutter/material.dart';

///A Widget to show task filters such as ALL, Pending & Completed Tasks.
class FilterButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const FilterButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
            color: isSelected ? Colors.deepPurple : Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.deepPurple)),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
