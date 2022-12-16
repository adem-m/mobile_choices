import 'package:flutter/material.dart';
import 'package:flutter_hobbies/footer.dart';
import 'package:flutter_hobbies/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _choices =
      List.of(["Jeux vidéo", "Mbappe", "Musique", "DOOM", "Cinéma", "Développement mobile"]);

  final List<String> _selectedItems = List.empty(growable: true);

  void addOrRemoveToList(String item) {
    setState(() {
      if (_selectedItems.contains(item)) {
        _selectedItems.remove(item);
      } else {
        _selectedItems.add(item);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
        ),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  width: double.infinity,
                  child: Header(
                    items: _selectedItems,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Footer(
                    items: _choices,
                    onTap: addOrRemoveToList,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
