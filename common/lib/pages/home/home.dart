export 'controllers/home_controller.dart';
export 'controllers/view.dart';
export 'widgets/bottom_bar.dart';
export 'widgets/top_button.dart';

import 'package:sonr_app/pages/home/widgets/app_bar.dart';

import 'controllers/home_controller.dart';
import 'package:sonr_app/style/style.dart';
import 'controllers/view.dart';
import 'package:sonr_app/pages/home/controllers/home_controller.dart';
import 'package:sonr_app/pages/home/controllers/view.dart';
import 'widgets/bottom_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    // Return View
    return Obx(() => SonrScaffold(
          resizeToAvoidBottomInset: false,
          floatingAction: HomeFloatingBar(),
          appBar: _buildAppBar(controller.view.value),
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

  PreferredSizeWidget? _buildAppBar(HomeView view) {
    if (view == HomeView.Search) {
      return null;
    } else {
      return HomeAppBar();
    }
  }
}
