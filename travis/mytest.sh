#!/bin/sh
set -ex
# show available schemes
# xcodebuild -list -project ./Smart4SURE.xcodeproj
# run on pull request
#if [ "$TRAVIS_PULL_REQUEST" = "false" ]; then
#security find-identity -v -p codesigning
#fastlane --verbose --capture_output archive scheme:"Smart4SURE"
fastlane --capture_output archive scheme:"BridgeAppSDKSample"
#fastlane certificates
# xcodebuild -scheme Smart4SURE archive | xcpretty
exit $?
#fi
