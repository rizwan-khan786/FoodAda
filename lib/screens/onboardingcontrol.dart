import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final titles = [
    'Welcome',
    'Discover',
    'Connect',
  ];
  final descriptions = [
    'Welcome to our app!',
    'Discover amazing features.',
    'Connect with friends.',
  ].obs;

  var currentPageIndex = 0.obs;

  void onPageChanged(int index) {
    currentPageIndex.value = index;
  }
}
