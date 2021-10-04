import '../payload/content/content.dart';
import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';
import 'package:dots_indicator/dots_indicator.dart';

class PayloadMultiCard extends StatelessWidget {
  final List<Payload_Item> items;
  const PayloadMultiCard({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isVisible = true.obs;
    final currentIndex = 0.0.obs;
    return Container(
      height: 460,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: AppRadii.radiusCard,
      ),
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) {
              isVisible(true);
              currentIndex(value.toDouble());
              Future.delayed(1500.milliseconds, () {
                isVisible(false);
              });
            },
            itemBuilder: (context, index) {
              final item = items[index];
              if (item.mime.isUrl) {
                return UrlItemContent(item: item.url);
              } else {
                return FileItemContent(item: item.file);
              }
            },
            itemCount: items.length,
          ),
          IgnorePointer(
            child: AnimatedOpacity(
              duration: 200.milliseconds,
              opacity: isVisible.value ? 1.0 : 0.0,
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 24),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.neutrals1.withOpacity(0.75),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  padding: EdgeInsets.all(8),
                  child: DotsIndicator(
                    dotsCount: items.length,
                    position: currentIndex.value,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
