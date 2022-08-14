import 'package:get/get.dart';

class DoctorsControllerBinding implements Bindings{
  final repositoryManager;

  DoctorsControllerBinding(this.repositoryManager);
  @override
  void dependencies() => Get.put(DoctorsController());
}

class DoctorsController extends GetxController{

}