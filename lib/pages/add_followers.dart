import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storezy/controllers/store_controller.dart';
import 'package:storezy/widgets/rounded_input.dart';

class AddFollowers extends GetView<StoreController> {
  int follower=0;
  AddFollowers({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (builder)=> Scaffold(
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
                        child: RoundedInput(hintText: "Add Follower(Numbers)", onSubmit: (p0) => follower=int.parse(p0),),
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
    ));
  }
}
