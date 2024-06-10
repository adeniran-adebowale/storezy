import 'package:flutter/material.dart';
import 'package:storezy/widgets/rounded_input.dart';

class IncrementFollowers extends StatefulWidget {
  const IncrementFollowers({super.key});

  @override
  State<IncrementFollowers> createState() => _IncrementFollowersState();
}

class _IncrementFollowersState extends State<IncrementFollowers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Increment Followers"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(
                    "This should contain 3 text fields and a Floating Action Button"),
               RoundedInput(hintText: "first Input"),
               SizedBox(height: 10,),
               RoundedInput(hintText: "first Input"),
               SizedBox(height: 10,),
               RoundedInput(hintText: "first Input"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
