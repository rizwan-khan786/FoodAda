import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'onboardingcontrol.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: PageView.builder(
          onPageChanged: controller.onPageChanged,
          itemCount: controller.titles.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() => Text(
                    controller.titles[index],
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  SizedBox(height: 20.0),
                  Obx(() => Text(
                    controller.descriptions[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.0),
                  )),
                  SizedBox(height: 40.0),
                  if (index == controller.titles.length - 1)
                    ElevatedButton(
                      onPressed: () {
                        // Handle "Get Started" button press.
                        // For example, navigate to the next screen.
                        Get.offNamed('/home');
                      },
                      child: Text('Get Started'),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
