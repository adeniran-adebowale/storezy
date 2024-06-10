import 'package:flutter/material.dart';

class ToggleStore extends StatefulWidget {
  const ToggleStore({super.key});

  @override
  State<ToggleStore> createState() => _ToggleStoreState();
}

class _ToggleStoreState extends State<ToggleStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toggle Store"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                  "A switch widget with a text field showing 'Is the store open?'"),
              Text(""),
              Switch(value: false, onChanged: (value) {}),
            ],
          ),
        ),
      ),
    );
  }
}
