#!/bin/bash

# The path for keys could be set when exec sign.sh as: 
#       KEY_PATH=/path/to/key sign.sh ..
# If the path is not set, the default value is:
#       1) if PORT_ROOT is set (after running lunch), it is
#          $PORT_ROOT/porting/tools
#       2) if not running lunch, the default path is ./
if [ -z "$PORT_ROOT" ]
then
    KEYPATH=${KEY_PATH:=.}
else
    KEYPATH=${KEY_PATH:=$PORT_ROOT/tools}
fi

SIGNAPK=$KEYPATH/signapk.jar
PEMKEY=$KEYPATH/platform.x509.pem
PK8KEY=$KEYPATH/platform.pk8

TMPDIR=.tmp_for_sign

function delete_meta_info() {
    zip -d $1 "META-INF/*"
}

function sign_for_phone() {
    echo ">>> Sign apks under dir $1..."
    for apk in `adb shell ls $1/*.apk | col -b`
    do
        echo ">>> Sign for $apk"
        file=`basename $apk`
        adb pull $apk $TMPDIR/$file
        delete_meta_info $TMPDIR/$file
        java -jar $SIGNAPK $PEMKEY $PK8KEY $TMPDIR/$file $TMPDIR/$file.signed
        zipalign 4 $TMPDIR/$file.signed $TMPDIR/$file.signed.aligned
        adb push $TMPDIR/$file.signed.aligned $1/$file
    done
}

function sign_for_dir() {
    echo ">>> Sign apks under dir $1..."
    for apk in `find $1 -name "*.apk"`
    do
        echo ">>> Sign for $apk"
        delete_meta_info $apk
        java -jar $SIGNAPK $PEMKEY $PK8KEY $apk $apk.signed
        zipalign 4 $apk.signed $apk.signed.aligned
        mv $apk.signed.aligned $apk
        rm $apk.signed
    done
}

if [ -z "$1" ]
then
    echo "usage: ./sign.sh sign.phone          - to sign all apks for phone"
    echo "       ./sign.sh sign.zip dir        - to sign all apks for the unzip-ed zip-file"
    echo "       ./sign.sh apk-file [filename] - to sign apk-file and push to phone as filename"
    exit 0
fi

if [ "$1" == "sign.phone" ]
then
    adb remount || { echo "Failed to remount the device"; exit 10;}
    mkdir -p $TMPDIR
    sign_for_phone "/system/app"
    sign_for_phone "/system/framework"
    rm -rf $TMPDIR
    echo Siging Complete
    exit 0
fi

if [ "$1" == "sign.zip" ]
then
    ZIP_DIR=$2
    sign_for_dir "$ZIP_DIR/system/app"
    sign_for_dir "$ZIP_DIR/system/framework"
    echo Siging Complete
    exit 0
fi

if [ -f "$1" ]
then
    SIGNED=$1.signed
    ALIGNED=$SIGNED.aligned
    delete_meta_info $1
    java -jar $SIGNAPK $PEMKEY $PK8KEY $1 $SIGNED
    zipalign 4 $SIGNED $ALIGNED
    if [ -n "$2" ]
    then
        adb remount || { echo "Failed to remount the device"; exit 10;}
        echo "push $ALIGNED $2"
        adb push $ALIGNED $2
        rm $SIGNED
        rm $ALIGNED
    else
        echo "The Signed file: $SIGNED"
    fi
    exit 0
else
    echo "Apk file $1 does not exist"
    exit 1
fi
