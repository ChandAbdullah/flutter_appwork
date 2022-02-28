import 'package:get/get.dart';
import 'package:task_manager/screens/home/home.dart';

class Routes {
  static const initial = '/';

  static final routes = [
    GetPage(name: '/', page: () => const HomeScreen()),
  ];
}
