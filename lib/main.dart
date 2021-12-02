import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

main() {
  GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Application",
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
  );
}
