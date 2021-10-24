#!/bin/bash
echo "🔷 Cleaning Flutter..."
SCRIPTDIR=$(dirname "$0")

cd ${SCRIPTDIR}/../../
ROOT_DIR=$(pwd)
flutter clean
PROJECT_DIR=${ROOT_DIR}/common
cd ${PROJECT_DIR}
flutter clean
rm -rf build
rm -rf ios/build
find ios -name "*.zip" -type f -delete && find . -name "*.ipa" -type f -delete
find ios/fastlane -name "report.xml" -type f -delete
find android/fastlane -name "report.xml" -type f -delete
flutter pub global activate cider
flutter pub global activate protoc_plugin
flutter pub global activate derry
cd ${ROOT_DIR} && flutter pub get
cd ${PROJECT_DIR} && flutter pub get
echo "✅ Finished Cleaning ➡ `date`"
