import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storezy/controllers/store_controller.dart';

class ToggleStore extends GetView<StoreController> {
  

  
  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (StoreController store)=> Scaffold(
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
              Switch(value: store.storeStatus == true , onChanged: (value) {
                store.storeStatusOpen(value);
                
                Get.toNamed("/home");
              }),
            ],
          ),
        ),
      ),
    ));
  }
}
