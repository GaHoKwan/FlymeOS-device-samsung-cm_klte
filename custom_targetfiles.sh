#/bin/bash
echo "in $0"
PWD=`pwd`
OUT_DIR=$PWD/out
TARGET_FILES_DIR=$OUT_DIR/merged_target_files
OVERLAY_DIR=$PWD/overlay

if [ -e $OVERLAY_DIR/bin/updater ]
then
   echo "Use custom updater bin file"
   cp $OVERLAY_DIR/bin/updater $TARGET_FILES_DIR/OTA/bin
fi

if [ -e $TARGET_FILES_DIR/SYSTEM/app/Camera ]
then
   cp -r $TARGET_FILES_DIR/SYSTEM/app/Camera $TARGET_FILES_DIR/SYSTEM/app/CameraDir/MzCamera
fi

mkdir -p $TARGET_FILES_DIR/BOOTABLE_IMAGES
cp -r $OVERLAY_DIR/*.img $TARGET_FILES_DIR/BOOTABLE_IMAGES/

cp -f $OVERLAY_DIR/file_contexts $TARGET_FILES_DIR/META/
