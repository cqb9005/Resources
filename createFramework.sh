#!/bin/sh

echo 'xxxxxxxxxxxxxxx'

echo "SYMROOT = $SYMROOT"

echo "SYMROOT = ${BUILD_DIR}/${CONFIGURATION}"

echo "SYMROOT = ${BUILD_DIR}/${CONFIGURATION}${EFFECTIVE_PLATFORM_NAME}"

bundleID=${PRODUCT_BUNDLE_IDENTIFIER}

CURRENTCONFIG_DEVICE_DIR=${BUILD_DIR}/${CONFIGURATION}${EFFECTIVE_PLATFORM_NAME}

echo 'Welcom to Bash'

JfBuildDir=${BUILD_DIR}

JfExecutablePath=${EXECUTABLE_PATH}

JfExecutableName=${EXECUTABLE_NAME}

JfExecutableFolderPath=${EXECUTABLE_FOLDER_PATH}

echo "JfBuildDir = $JfBuildDir"

echo "JfExecutablePath = $JfExecutablePath"

echo "JfExecutableName = $JfExecutableName"

echo "90-> ${CURRENTCONFIG_DEVICE_DIR}"



echo "error:message"

echo "warning:message"



cd ${JfBuildDir}



framework="IJKMediaFramework"

[ -f "$framework" ] && rm "$framework"



dire="outputFramework/"

[ -d "$dire" ] && rm -rf "$dire"

mkdir "$dire"



if [ -d "Release-iphoneos" ] && [ -d "Release-iphonesimulator" ]; then

echo "composition framework"



lipo -create Release-iphoneos/${JfExecutablePath} Release-iphonesimulator/${JfExecutablePath} -output ${JfExecutableName}



cp -rf Release-iphoneos/* ${dire}

cp -f ${JfExecutableName} ${dire}/${JfExecutableFolderPath}

rm -f ${JfExecutableName}

open ${dire}

fi