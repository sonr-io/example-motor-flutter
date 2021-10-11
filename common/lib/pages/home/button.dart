import 'package:sonr_app/style/style.dart';
import 'package:sonr_app/theme/theme.dart';
import 'package:sonr_plugin/sonr_plugin.dart';

/// #### Home Tab Bar Navigation - Share Button
class ShareButton extends StatelessWidget {
  ShareButton() : super(key: GlobalKey());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: ObxValue<RxBool>(
          (isPressed) => AnimatedScale(
              duration: Duration(milliseconds: 150),
              scale: isPressed.value ? 1.1 : 1,
              child: Container(
                width: 95,
                height: 95,
                child: GestureDetector(
                  onTapDown: (details) => isPressed(true),
                  onTapUp: (details) {
                    isPressed(false);
                    Future.delayed(150.milliseconds, () => SonrService.to.pick(supplyAfterPick: true));
                  },
                  child: PolyContainer(
                      radius: 24,
                      rotate: 30,
                      sides: 6,
                      gradient: AppGradients.gradientPrimary,
                      child: ShaderMask(
                        blendMode: BlendMode.modulate,
                        shaderCallback: (bounds) => AppGradients.gradientTeritary.createShader(bounds),
                        child: Icon(
                          SimpleIcons.Share,
                          size: 34,
                          color: Colors.white,
                        ),
                      )),
                ),
              )),
          false.obs),
    );
  }
}
