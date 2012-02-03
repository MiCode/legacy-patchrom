#!/bin/bash
set -- `getopt "p:" "$@"`
while :
do
case "$1" in
    -p) shift; path="$1/" ;;
    --) break ;;
esac
shift
done
shift

TOOL_PATH=$PORT_ROOT/tools
TMPDIR=tmp_for_deodex

if [ -z "`which ${TOOL_PATH}baksmali`" ]
then
     echo "Error: Can not find baksmali/smali, use -p to specify the right path."
     exit -1
fi

# $1: the classpath 
# $2: the odex files for processing
# $3: the result file type: jar or apk
function deodex_one_file() {
    classpath=$1
    file=$2
    tofile=${file/odex/$3}
    echo "processing $tofile"
    ${TOOL_PATH}baksmali -c $classpath -d framework -I -x $file || exit -2 
    ${TOOL_PATH}smali out -o classes.dex || exit -2
    jar uf $tofile classes.dex
    rm classes.dex
    rm -rf out
    rm $file
    zipalign 4 $tofile $tofile.aligned
    mv $tofile.aligned $tofile
}

adb remount || { echo "Failed to remount the device"; exit -3;}

mkdir $TMPDIR || { echo "Failed to mkdir $TMPDIR"; exit -4; }
cd $TMPDIR

echo "To pull all framework and app files from phone..."
adb pull /system/framework framework 
adb pull /system/app app 
tar cf odex.bak.tar framework app

deodex_one_file "" framework/core.odex jar

for f in framework/*.jar
do
    classpath=$classpath:$f
done
echo "classpath=$classpath"

for file in framework/*.odex
do
    deodex_one_file $classpath $file jar
done

for file in app/*.odex
do
    deodex_one_file $classpath $file apk
done

echo "Push the result jars and apks to phone"
adb shell rm -r system/app
adb shell rm -r system/framework
adb shell mkdir system/app
adb shell mkdir system/framework
adb push framework system/framework
adb push app system/app

echo "Leave all locale files at $TMPDIR, and delete it manually for next executing"

