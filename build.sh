#!/usr/bin/env bash

STREAMING_ENV_PATH=/data

bash ${STREAMING_ENV_PATH}/rtc-native/scripts/build-linux.sh  || exit

echo 'Copy so library begin...'
cp ${STREAMING_ENV_PATH}/rtc-native/build/librtc.so ${STREAMING_ENV_PATH}/rtc-jni/src/main/resources/jni/ || exit

bash ${STREAMING_ENV_PATH}/rtc-jni/scripts/build-linux.sh || exit
bash ${STREAMING_ENV_PATH}/streaming-platform/scripts/build-linux.sh || exit

echo 'FINISH BUILDING ALL MODULES SUCCESSFULLY!'


