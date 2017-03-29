#!/bin/sh
set -ex
# show available schemes
# xcodebuild -list -project ./Smart4SURE.xcodeproj
# run on pull request
#if [ "$TRAVIS_PULL_REQUEST" = "false" ]; then
#security find-identity -v -p codesigning
#fastlane --verbose --capture_output archive scheme:"Smart4SURE"
#fastlane certificates
# fastlane --capture_output archive scheme:"BridgeAppSDKSample"
# xcodebuild -scheme Smart4SURE archive | xcpretty
# exit $?
#fi


if [ "$TRAVIS_PULL_REQUEST" = "true" ]; then
    fastlane test scheme:"BridgeAppSDK"
elif [ "$TRAVIS_BRANCH" = "master" ]; then
    fastlane ci_archive scheme:"BridgeAppSDKSample" export_method:"development"
fi
exit $?
