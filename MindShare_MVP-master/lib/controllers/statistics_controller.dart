import 'package:get/get.dart';

class StatisticsControllerBinding implements Bindings{
  final repositoryManager;

  StatisticsControllerBinding(this.repositoryManager);
  @override
  void dependencies() => Get.put(StatisticsController());
}

class StatisticsController extends GetxController{

}