import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:mindshare/ui/pages/page_home.dart';
import 'package:mindshare/ui/pages/page_setting_nick_name.dart';
import 'package:mindshare/ui/pages/social_login.dart';

import '../../controllers/diary_controller.dart';
import '../../controllers/login_controller.dart';
import '../../models/diary.dart';
import '../../ms_route.dart';
import '../../util/repository_manager.dart';


class MainViewModel {
  final SocialLogin _socialLogin;
  bool isLogined = false;
  User? user;

  MainViewModel(this._socialLogin);

  Future Kakaologin() async{
    isLogined = await _socialLogin.Kakaologin();
    if(isLogined){
      user = await UserApi.instance.me();
      GetPage(name: MSRoute.homePage, page: () => PageHome(),);
    }
  }

  Future Kakaologout() async{
    await _socialLogin.Kakaologout();
    isLogined = false;
    user = null;
  }

  // _initRepositories(){
  //   final repositoryManager = RepositoryManager();
  //   repositoryManager.add<Diary>(DiaryRepository());
  //   repositoryManager.init();
  //   return repositoryManager;
  // }
}