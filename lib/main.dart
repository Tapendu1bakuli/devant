import 'package:devant/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  // SettingsService settingsService = Get.put(SettingsService());
  WidgetsFlutterBinding.ensureInitialized();

  // IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
  // print('Running on ${iosInfo.utsname.machine}');  // e.g. "iPod7,1"
  //
  // WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
  // print('Running on ${webBrowserInfo.userAgent}');
  // Example of inserting a worker
  // await dbHelper.insertWorker('John Doe', 0);

  // Example of fetching all workers
  // List<Map<String, dynamic>> workers = await dbHelper.fetchWorkers();
  // print(workers);





  runApp(
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) =>
    GetMaterialApp(

      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      initialRoute:Theme1AppPages.INITIAL,
      getPages: Theme1AppPages.routes,
      // localizationsDelegates: [
      //   MonthYearPickerLocalizations.delegate,
      // ],
      // themeMode: settingsService.getThemeMode(),
      // theme: settingsService.getLightTheme(),
      // darkTheme: settingsService.getDarkTheme(),
      // ),
    ),
  );
}

