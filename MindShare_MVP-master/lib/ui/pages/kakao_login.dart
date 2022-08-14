import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:mindshare/ms_route.dart';
import 'package:mindshare/ui/pages/page_home.dart';
import 'package:mindshare/ui/pages/social_login.dart';
import 'package:mindshare/models/user.dart';

import '../../util/memory_db/memory_db.dart';
import '../../util/repository.dart';

class KakaoLogin implements SocialLogin{

  @override
  Future<bool> Kakaologin() async{
    try{
      bool isInstalled = await isKakaoTalkInstalled();
      if(isInstalled){
        try {
          await UserApi.instance.loginWithKakaoAccount();
          return true;
        } catch(e){
          return false;
          }
        }else {
        try {
          await UserApi.instance.loginWithKakaoAccount();
        } catch(e){
          return false;
        }
      }
      return true;
    } catch(e){
      return false;
    }
  }

  @override
  Future<bool> Kakaologout() async{
    try {
      await UserApi.instance.unlink();
      return true;
    } catch(error){
      return false;
    }
  }

}