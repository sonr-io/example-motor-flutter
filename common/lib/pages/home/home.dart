export 'home_controller.dart';
export 'views/views.dart';
import 'package:sonr_app/theme/theme.dart';

import 'home_controller.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/pages/home/home_controller.dart';
import 'navigation/bottom_bar.dart';
import 'navigation/nearby_row.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // Return View
    return Obx(
      () => SonrScaffold(
        resizeToAvoidBottomInset: false,
        floatingAction: HomeFloatingBar(),
        appBar: AppBar(
          toolbarHeight: 92,
          elevation: 0,
          backgroundColor: AppColors.neutrals1,
          title: Container(
            padding: const EdgeInsets.all(8.0),
            child: Get.isDarkMode
                ? SvgPicture.asset(
                    "assets/images/logos/home-sonr-dark.svg",
                    height: 32,
                  )
                : SvgPicture.asset(
                    "assets/images/logos/home-sonr-light.svg",
                    height: 32,
                    cacheColorFilter: true,
                  ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Get.isDarkMode ? SimpleIcons.Menu.white : SimpleIcons.Menu.white,
                onPressed: () {},
              ),
            )
          ],
          bottom: SonrService.to.localPeers.isNotEmpty ? NearbyRow() : null,
        ),
        body: Container(
            child: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller.tabController,
          children: [
            // DashboardView(key: ValueKey<HomeView>(HomeView.Dashboard)),
            Container(),
          ],
        )),
      ),
    );
  }
}
