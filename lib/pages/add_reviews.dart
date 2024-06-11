import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storezy/controllers/store_controller.dart';
import 'package:storezy/models/reviews.dart';
import 'package:storezy/widgets/rounded_input.dart';

class AddReviews extends GetView<StoreController>{
  String userName='';
  String reviews='';

 AddReviews({super.key});

 
  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (StoreController store)=> Scaffold(
      appBar: AppBar(
        title: Text("Add Reviews"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
               RoundedInput(hintText: "Add Username", onSubmit: (txt)=>userName=txt,),
            
                SizedBox(height: 10,),
            
               RoundedInput(hintText: "Add Your Review",onSubmit: (txt)=>reviews=txt),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: () {
                  print(userName+" :  "+reviews);
                  if(userName!='' && reviews!=''){
                      store.addReview(StoreReviews.fromJson({'name': userName, 'review': reviews}));
                      store.update();
                  }

                }, child: Text("Add Review")),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,

                  child:SizedBox(
                    height: 700, 
                  child:ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: store.followerList.length,
                      itemBuilder: (context, index) {
                        return Text('${store.reviews.length>0 ? store.reviews[index].review : "No reviews Yet"}', );
                      },
                    ),),


                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
