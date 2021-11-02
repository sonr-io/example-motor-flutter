import 'package:sonr_app/theme/theme.dart';
import 'package:sonr_app/style/style.dart';

extension MimeIcon on MIME_Type {
  Widget gradient({double size = 32, Gradient? gradient}) {
    return this.iconData.gradient(value: gradient ?? AppGradients.gradientSecondary, size: size);
  }

  Icon icon({double size = 32, Color color = AppColors.neutrals8}) {
    return this.iconData.icon(size: size, color: color) as Icon;
  }

  Icon black({double size = 32}) {
    return this.iconData.blackWith(size: size) as Icon;
  }

  Icon grey({double size = 32}) {
    return this.iconData.greyWith(size: size) as Icon;
  }

  Icon white({double size = 32}) {
    return this.iconData.whiteWith(size: size) as Icon;
  }

  IconData get iconData {
    switch (this) {
      case MIME_Type.AUDIO:
        return SiliconsSolid.music;
      case MIME_Type.IMAGE:
        return SiliconsSolid.photos;
      case MIME_Type.TEXT:
        return SiliconsSolid.document;
      case MIME_Type.VIDEO:
        return SiliconsSolid.video_recorder;
      default:
        return SiliconsSolid.document;
    }
  }
}

extension DesignIcon on IconData {
  Icon get black {
    return Icon(
      this,
      size: 24,
      color: AppColors.neutrals1,
    );
  }

  Widget blackWith({double size = 24}) {
    return Icon(
      this,
      size: size,
      color: AppColors.neutrals1,
    );
  }

  Icon get grey {
    return Icon(
      this,
      size: 24,
      color: Get.theme.cardColor,
    );
  }

  Widget greyWith({double size = 24}) {
    return Icon(
      this,
      size: size,
      color: Get.theme.cardColor,
    );
  }

  Icon get white {
    return Icon(
      this,
      size: 24,
      color: AppColors.neutrals8,
    );
  }

  Widget whiteWith({double size = 24}) {
    return Icon(
      this,
      size: size,
      color: AppColors.neutrals8,
    );
  }

  Widget icon({double size = 24, Color color = AppColors.neutrals8}) {
    return Icon(this, size: size, color: color);
  }

  Widget gradient({Gradient? value, double size = 32}) {
    return ShaderMask(
      blendMode: BlendMode.modulate,
      shaderCallback: (bounds) {
        var grad = value ?? AppGradients.gradientSecondary;
        return grad.createShader(bounds);
      },
      child: Icon(
        this,
        size: size,
        color: Colors.white,
      ),
    );
  }
}
