#!/usr/bin/env bash -xeo pipefail

source $(dirname $0)/config.sh

$(dirname $0)/update-release.sh

cd ./ios

if [ -f ./Podfile ]; then
  pod install
fi

export FORCE_BUNDLING=true

if [ -d $APP_NAME.xcworkspace ]; then
    xcodebuild build -workspace $APP_NAME.xcworkspace -scheme $APP_NAME -configuration Debug -sdk iphonesimulator -derivedDataPath ./build | xcpretty
else
    xcodebuild build -project $APP_NAME.xcodeproj -scheme $APP_NAME -configuration Debug -sdk iphonesimulator -derivedDataPath ./build | xcpretty
fi

cd ..

(cd ./ios/build/Build/Products/Debug-iphonesimulator && zip -FSr $PROJECT_DIR/build/app-debug.zip $APP_NAME.app)

echo -e '\n ==> ./build/app-debug.zip'
