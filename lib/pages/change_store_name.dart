import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storezy/controllers/store_controller.dart';
import 'package:storezy/services/storage_service.dart';
import 'package:storezy/widgets/rounded_input.dart';

class ChangeStoreName extends GetView<StoreController> {
   String storeName='';
  
   ChangeStoreName({super.key});

  
 

  @override
  Widget build(BuildContext context) {
    final contr=Get.find<StoreController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Change Store Name"),
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
                        child: RoundedInput(hintText: "Change Store Name", onSubmit: (value){storeName=value;}, ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print(storeName);
                          if(storeName!=''){
                               contr.updateStoreName(storeName);
                               Get.toNamed("/home");
                          }
                          
                        },
                        child: Text("Update Store Name"),
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
