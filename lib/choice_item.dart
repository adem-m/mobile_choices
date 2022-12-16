import 'package:flutter/material.dart';

class ChoiceItem extends StatefulWidget {
  final String name;

  final void Function(String)? onTap;

  const ChoiceItem({required this.name, this.onTap, Key? key})
      : super(key: key);

  @override
  State<ChoiceItem> createState() => _ChoiceItemState();
}

class _ChoiceItemState extends State<ChoiceItem> {
  bool _isSelected = false;

  final Color _unselectedColor = Colors.grey.shade300;
  final Color _selectedColor = Colors.orangeAccent;

  Color getColor() {
    return _isSelected ? _selectedColor : _unselectedColor;
  }

  void handleOnTap() {
    if (widget.onTap != null) {
      _isSelected = !_isSelected;
      widget.onTap!(widget.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleOnTap,
      child: Chip(
        label: Text(widget.name),
        backgroundColor: getColor(),
      ),
    );
  }
}
