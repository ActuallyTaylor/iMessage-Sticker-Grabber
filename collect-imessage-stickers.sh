#!/bin/sh

OUTPUT_DIR=output
MESSAGES_DIR=~/Library/Messages
STICKERS_SUBDIR=StickersCache

ls $MESSAGES_DIR >> /dev/null

if [ "$?" -ne 0 ]; then
    echo "Failed to read the Messages directory!"
    echo "This means your terminal does not have Full Disk Access. Grant this in System Settings -> Privacy -> Full Disk Access, then re-run this shell script."
    echo "\033[31;1mMake sure to turn off Full Disk Access after running this script!\033[0m"
    exit 1
fi

mkdir $OUTPUT_DIR
find ~/Library/Messages/StickerCache -name '*.heic' -exec cp -prv '{}' $OUTPUT_DIR ';'
