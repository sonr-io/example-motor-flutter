export 'home_controller.dart';
export 'views/views.dart';
export 'widgets/bottom_bar.dart';
export 'widgets/top_button.dart';

import 'home_controller.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/pages/home/home_controller.dart';
import 'widgets/bottom_bar.dart';
import 'widgets/nearby_row.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // Return View
    return Obx(() => SonrScaffold(
          resizeToAvoidBottomInset: false,
          floatingAction: HomeFloatingBar(),
          appBar: AppBar(
            leading: Get.isDarkMode
                ? SvgPicture.asset(
                    "assets/images/logos/home-sonr-dark.svg",
                    width: 92,
                  )
                : SvgPicture.asset(
                    "assets/images/logos/home-sonr-light.svg",
                    width: 92,
                  ),
            actions: [
              IconButton(
                icon: Get.isDarkMode ? SimpleIcons.Menu.white : SimpleIcons.Menu.white,
                onPressed: () {},
              )
            ],
            bottom: NearbyRow(),
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
        ));
  }
}
