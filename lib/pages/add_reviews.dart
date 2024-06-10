import 'package:flutter/material.dart';
import 'package:storezy/widgets/rounded_input.dart';

class AddReviews extends StatefulWidget {
  const AddReviews({super.key});

  @override
  State<AddReviews> createState() => _AddReviewsState();
}

class _AddReviewsState extends State<AddReviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Reviews"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
               RoundedInput(hintText: "first Input"),
            
                SizedBox(height: 10,),
            
               RoundedInput(hintText: "first Input"),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: () {}, child: Text("Add Review")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
