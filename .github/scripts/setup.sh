#!/bin/bash
echo "🔷 Setup Project..."
SCRIPTDIR=$(dirname "$0")

cd ${SCRIPTDIR}/../../
ROOT_DIR=$(pwd)
PROJECT_DIR=${ROOT_DIR}/common
ASSETS_DIR=${PROJECT_DIR}/assets
LINE_ICONS_DIR=${PROJECT_DIR}/assets/icons/line
SOLID_ICONS_DIR=${PROJECT_DIR}/assets/icons/solid
OUT_FONT_LINE=${PROJECT_DIR}/assets/fonts/Silicons-Line.ttf
OUT_FONT_SOLID=${PROJECT_DIR}/assets/fonts/Silicons-Solid.ttf
OUT_FLUTTER_LINE=${PROJECT_DIR}/lib/theme/icons_line.dart
OUT_FLUTTER_SOLID=${PROJECT_DIR}/lib/theme/icons_solid.dart

echo "Activating Global Packages..."
flutter pub global activate cider
flutter pub global activate protoc_plugin
flutter pub global activate derry
flutter pub global activate icon_font_generator
echo "\n"

echo "Compiling Icon Fonts..."
icon_font_generator --from=${LINE_ICONS_DIR} --class-name=SiliconsLine --out-font=${OUT_FONT_LINE} --out-flutter=${OUT_FLUTTER_LINE}

icon_font_generator --from=${SOLID_ICONS_DIR} --class-name=SiliconsSolid --out-font=${OUT_FONT_SOLID} --out-flutter=${OUT_FLUTTER_SOLID}
echo "\n"
