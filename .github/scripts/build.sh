#!/bin/bash
echo "🔷 Building Mobile..."
SCRIPTDIR=$(dirname "$0")

echo "Setting Paths..."
cd ${SCRIPTDIR}/../../
ROOT_DIR=$(pwd)
PROJECT_DIR=${ROOT_DIR}/common
IOS_DIR=${PROJECT_DIR}/ios
ANDROID_DIR=${PROJECT_DIR}/android
APP_BUILD=`cider version | cut -d'+' -f 2`
APP_VERSION=`cider version | cut -d'+' -f 1`
echo "Done."
echo "\n"

echo "Bumping Version..."
cd ${PROJECT_DIR} && cider bump build
cd ${IOS_DIR} && agvtool new-version -all ${APP_BUILD} && agvtool new-marketing-version ${APP_VERSION}
echo "Build: ${APP_BUILD}"
echo "Done."
echo "\n"

echo "Building iOS..."
cd ${PROJECT_DIR} && flutter build ios --release --no-codesign
echo "✅  Finished Building iOS ➡ " && date

echo "Building Android..."
cd ${PROJECT_DIR} && flutter build appbundle --release
echo "✅  Finished Building Android ➡ " && date
