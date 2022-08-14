import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:mindshare/models/location.dart';
import 'package:mindshare/res/ms_fonts.dart';
import 'package:mindshare/util/repository_manager.dart';
import 'controllers/login_controller.dart';
import 'models/diary.dart';
import 'models/emotion.dart';
import 'models/user.dart';
import 'ms_route.dart';
import 'res/strings.dart';

import 'controllers/diary_controller.dart';
import 'controllers/doctors_controller.dart';
import 'controllers/statistics_controller.dart';
import 'ui/pages/page_about.dart';
import 'ui/pages/page_admin_home.dart';
import 'ui/pages/page_diary.dart';
import 'ui/pages/page_diary_calendar.dart';
import 'ui/pages/page_diary_emotion.dart';
import 'ui/pages/page_doctor_profile.dart';
import 'ui/pages/page_doctors.dart';
import 'ui/pages/page_grabbed.dart';
import 'ui/pages/page_grabs.dart';
import 'ui/pages/page_home.dart';
import 'ui/pages/page_login.dart';
import 'ui/pages/page_setting.dart';
import 'ui/pages/page_setting_location.dart';
import 'ui/pages/page_setting_nick_name.dart';
import 'ui/pages/page_share.dart';
import 'ui/pages/page_share_and_grab.dart';
import 'ui/pages/page_splash.dart';
import 'ui/pages/page_statistics.dart';
import 'ui/pages/page_ungrabbed.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({Key? key}) : super(key: key);

  _initRepositories(){
    final repositoryManager = RepositoryManager();
    repositoryManager.add<Location>(LocationRepository());
    repositoryManager.add<User>(UserRepository());
    repositoryManager.add<Emotion>(EmotionRepository());
    repositoryManager.add<Diary>(DiaryRepository());
    repositoryManager.init();
    return repositoryManager;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final repositoryManager = _initRepositories();
    Get.put(LoginController(repositoryManager:repositoryManager));

    final pages = <GetPage>[
      GetPage(name: MSRoute.splashPage, page: () => PageSplash()),
      GetPage(name: MSRoute.loginPage, page: () => PageLogin()),
      GetPage(name: MSRoute.settingNickNamePage, page: () => PageSettingNickName()),
      GetPage(name: MSRoute.settingLocationPage, page: () => PageSettingLocation()),
      GetPage(name: MSRoute.homePage, page: () => PageHome(),
          binding: DiaryControllerBinding(repositoryManager)),
      GetPage(name: MSRoute.aboutPage, page: () => PageAbout()),
      GetPage(name: MSRoute.settingPage, page: () => PageSetting()),
      GetPage(name: MSRoute.diaryCalendarPage, page: () => PageDiaryCalendar()),
      GetPage(name: MSRoute.statisticsPage, page: () => PageStatistics(),
          binding: StatisticsControllerBinding(repositoryManager)),
      GetPage(name: MSRoute.diaryEmotionPage, page: () => PageDiaryEmotion()),
      GetPage(name: MSRoute.diaryPage, page: () => PageDiary()),
      GetPage(name: MSRoute.sharePage, page: () => PageShare()),
      GetPage(name: MSRoute.grabsPage, page: () => PageGrabs()),
      GetPage(name: MSRoute.doctorProfilePage, page: () => PageDoctorProfile(),
          binding: DoctorsControllerBinding(repositoryManager)),
      GetPage(name: MSRoute.adminHomePage, page: () => PageAdminHome()),
      GetPage(name: MSRoute.shareAndGrabPage, page: () => PageShareAndGrab()),
      GetPage(name: MSRoute.ungrabbedPage, page: () => PageUngrabbed()),
      GetPage(name: MSRoute.grabbedPage, page: () => PageGrabbed()),
      GetPage(name: MSRoute.doctorsPage, page: () => PageDoctors()),
    ];

    return GetMaterialApp(
      title: 'MindShare',
      theme: ThemeData(
        fontFamily: MSFonts.fontFamily
      ),
      translations: Strings(),
      locale: Locale('ko', 'KR'),
      fallbackLocale: Locale('ko', 'KR'),
      getPages: pages,
      initialRoute: MSRoute.splashPage);
  }
}