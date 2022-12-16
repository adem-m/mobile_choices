import 'package:flutter/material.dart';

import 'choice_item.dart';

class Footer extends StatefulWidget {
  final List<String> items;
  final void Function(String)? onTap;

  const Footer({required this.items, this.onTap, Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  List<Widget> getItemList() {
    return widget.items
        .map((item) => ChoiceItem(
              name: item,
              onTap: widget.onTap,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 5,
          children: getItemList(),
        ),
      ),
    );
  }
}
