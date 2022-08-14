import 'package:get/get.dart';
import 'package:mindshare/ms_route.dart';
import 'package:mindshare/util/repository_manager.dart';

import '../../models/user.dart';
import '../../util/model.dart';
import '../models/location.dart';

class LoginControllerBinding implements Bindings{
  final repositoryManager;

  LoginControllerBinding(this.repositoryManager);
  @override
  void dependencies() => Get.put(LoginController(repositoryManager: repositoryManager));
}

enum LoginState {NotLoggedIn, LoggedIn}

class LoginController extends GetxController{
  final _state = LoginState.NotLoggedIn.obs;

  LoginController({required this.repositoryManager}){
    _userRepository = repositoryManager.get<User>();
  }
  get state => _state.value;
  set state(s) => _state.value = s;

  final RepositoryManager repositoryManager;
  late UserRepository _userRepository;

  login(){
    final user = User(uid:0, email:'deepbluelabel@gmail.com');
    _userRepository.user = user;
    state = LoginState.LoggedIn;
    goNext();
  }

  goNext() => Get.offNamed(_getHomePage());

  setNickName(nickname) {
    _userRepository.user!.nickName = nickname;
  }

  get locations => repositoryManager.get<Location>().getAll();

  setLocation(location){
    _userRepository.user!.location = location;
  }

  _getHomePage(){
    if (state == LoginState.NotLoggedIn) return MSRoute.loginPage;
    if (Model.isUndefined(_userRepository.user!.nickName))
      return MSRoute.settingNickNamePage;
    if (Model.isUndefined(_userRepository.user!.location))
      return MSRoute.settingLocationPage;
    return MSRoute.homePage;
  }
}