#!/bin/bash

TARGET_FILES_DIR=$1
SYSTEM_DIR=$TARGET_FILES_DIR/SYSTEM

cp -r overlay/variant/ $TARGET_FILES_DIR/VARIANT/

cp -r overlay/file_contexts $TARGET_FILES_DIR/META/


