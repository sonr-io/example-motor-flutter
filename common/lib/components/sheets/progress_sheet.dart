import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';

class ProgressSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(builder: (context, scrollController) {
      return Container(
        decoration: BoxDecoration(
          color: Get.theme.canvasColor,
          borderRadius: AppRadii.radiusCardOverlay,
        ),
        child: ListView.builder(
            controller: scrollController,
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  'Item $index',
                  style: AppTextStyles.bodyCaptionBold,
                ),
              );
            }),
      );
    });
  }
}
