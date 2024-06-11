import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storezy/controllers/store_controller.dart';
import 'package:storezy/widgets/rounded_input.dart';

class IncrementFollowers extends GetView<StoreController>  {


  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (StoreController store)=> Scaffold(
      appBar: AppBar(
        title: Text("Increment Followers"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(""),
               Text("Followers ${store.folllowerCount}"),
               SizedBox(height: 10,),
               Text("Obx"),
               SizedBox(height: 10,),
               Text("${store.folllowerCount}"),
               BackButton(
                color: Colors.white,
               )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.incrementStoreFollowers();

          store.update();

        },
        child: Icon(Icons.add),
      ),
    ));
  }
}
