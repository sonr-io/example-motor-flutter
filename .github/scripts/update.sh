#!/bin/bash
echo "🔷 Updating Sonr Core (xcframework, aar, proto)..."
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
IOS_FRAMEWORK_DIR=${ROOT_DIR}/ios/Frameworks
ANDROID_FRAMEWORK_DIR=${ROOT_DIR}/android/libs
PROTO_DIR=${ROOT_DIR}/lib/src
PROTO_STG_DIR=${PROTO_DIR}/generated
PROTO_LIST=${PROTO_STG_DIR}/proto/**/*.proto

echo "Cleaning Directories..."
rm -rf ${IOS_FRAMEWORK_DIR}/Core.xcframework
rm -rf ${ANDROID_FRAMEWORK_DIR}/io.sonr.core.aar
echo "\n"

echo "Compiling Icon Fonts..."
icon_font_generator --from=${LINE_ICONS_DIR} --class-name=SiliconsLine --out-font=${OUT_FONT_LINE} --out-flutter=${OUT_FLUTTER_LINE}

icon_font_generator --from=${SOLID_ICONS_DIR} --class-name=SiliconsSolid --out-font=${OUT_FONT_SOLID} --out-flutter=${OUT_FLUTTER_SOLID}
echo "\n"

echo "Downloading Release Asset (proto)..."
mkdir -p ${PROTO_STG_DIR}
gh release download --repo 'sonr-io/core' --pattern proto_*.zip --dir ${PROTO_DIR}
unzip -o ${PROTO_DIR}/proto_*.zip -d ${PROTO_STG_DIR}
rm -rf ${PROTO_DIR}/proto_*.zip
echo "\n"

echo "🔷 Compiling protos..."
protoc ${PROTO_LIST} --dart_out=grpc:${PROTO_DIR} --proto_path=${PROTO_STG_DIR}
rm -rf ${PROTO_STG_DIR}
echo "\n"

echo "Downloading Release Asset (ios)..."
gh release download --repo 'sonr-io/core' --pattern *_ios.zip --dir ios/Frameworks
unzip -o ios/Frameworks/*_ios.zip -d ios/Frameworks
rm -rf ios/Frameworks/*_ios.zip
echo "\n"

echo "Downloading Release Asset (android)..."
gh release download --repo 'sonr-io/core' --pattern *_android.zip --dir android/libs
unzip -o android/libs/*_android.zip -d android/libs
rm -rf android/libs/*_android.zip
rm -rf android/libs/*.jar
echo "\n"

echo "----"
echo "✅ Finished Updating Plugin ➡ `date`"
echo "\n"
