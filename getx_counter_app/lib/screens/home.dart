import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_app/controllers/counterController.dart';
import 'other.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counter = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Clicks ! ${counter.count.value}"),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(OtherScreen());
              },
              child: Text("Open Other Screen"))
        ],
      ),
    );
  }
}
