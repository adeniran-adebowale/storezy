import 'package:flutter/material.dart';
import 'package:storezy/widgets/rounded_input.dart';

class AddFollowers extends StatefulWidget {
  const AddFollowers({super.key});

  @override
  State<AddFollowers> createState() => _AddFollowersState();
}

class _AddFollowersState extends State<AddFollowers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Followers"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              
             
              Form(
                  child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: RoundedInput(hintText: "Add Follower"),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Add Follower"),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
