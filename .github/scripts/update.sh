#!/bin/bash
echo "🔷 Upgrading Frameworks..."
SCRIPTDIR=$(dirname "$0")
cd ${SCRIPTDIR}/../../
ROOT_DIR=$(pwd)
PROJECT_DIR=${ROOT_DIR}/common
IOS_FRAMEWORK_DIR=${ROOT_DIR}/ios/Frameworks
ANDROID_FRAMEWORK_DIR=${ROOT_DIR}/android/libs

echo "Cleaning Directories..."
rm -rf ${IOS_FRAMEWORK_DIR}/Core.xcframework
rm -rf ${ANDROID_FRAMEWORK_DIR}/io.sonr.core.aar

echo "Downloading Release Asset (ios)..."
gh release download --repo 'sonr-io/core' --pattern *_ios.zip --dir ios/Frameworks
unzip -o ios/Frameworks/*_ios.zip -d ios/Frameworks
rm -rf ios/Frameworks/*_ios.zip

echo "Downloading Release Asset (android)..."
gh release download --repo 'sonr-io/core' --pattern *_android.zip --dir android/libs
unzip -o android/libs/*_android.zip -d android/libs
rm -rf android/libs/*_android.zip
rm -rf android/libs/*.jar

echo "----"
echo "✅ Finished Updating Plugin ➡ `date`"
