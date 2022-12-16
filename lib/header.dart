import 'package:flutter/material.dart';
import 'package:flutter_hobbies/choice_item.dart';

class Header extends StatefulWidget {
  final List<String> items;

  const Header({required this.items, Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  Widget getContent(BuildContext context) {
    if (widget.items.isEmpty) {
      return Text(
        "Cliquez sur les choix en dessous !",
        style: Theme.of(context).textTheme.headline2,
      );
    }
    return Wrap(
      spacing: 5,
      children: List.generate(widget.items.length,
          (index) => ChoiceItem(name: widget.items[index])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Vos choix :",
              style: Theme.of(context).textTheme.headline1,
            ),
            getContent(context),
          ],
        ),
      ),
    );
  }
}
