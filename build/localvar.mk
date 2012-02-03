#
# Currenly the following local variables are used for
# each product to define the behavior for porting
# 	local-zip-file 		MUST be defined
# 	local-out-zip-file
# 	local-modified-apps
# 	local-miui-apps
# 	local-miui-modified-apps
# 	local-remove-apps
# 	local-pre-zip
# 	local-after-zip
# See i9100/makefile as an example
#

ERR_REPORT   :=

ZIP_FILE     := $(strip $(local-zip-file))
ifeq ($(ZIP_FILE),)
    ERR_REPORT += error-no-zipfile
endif

OUT_ZIP_FILE := $(strip $(local-out-zip-file))
ifeq ($(OUT_ZIP_FILE),)
    OUT_ZIP_FILE:= porting_miui.zip
endif

APPS         := $(strip $(local-modified-apps))
MIUIAPPS     := $(strip $(local-miui-apps))
MIUIAPPS_MOD := $(strip $(local-miui-modified-apps))

ACT_PRE_ZIP  := pre-zip-misc
ACT_PRE_ZIP  += $(strip $(local-pre-zip))

RUNDAPKS     := $(local-remove-apps)
ifneq ($(RUNDAPKS),)
    ACT_PRE_ZIP += remove-rund-apks
endif

ACT_AFTER_ZIP := $(strip $(local-after-zip))

ifeq ($(strip $(USE_ANDROID_OUT)),true)
    ifeq ($(ANDROID_OUT),)
         ERR_REPORT += error-android-env
    else
         OUT_SYS_PATH := $(ANDROID_OUT)/system
	 REALLY_CLEAN = $(CLEANJAR) $(CLEANMIUIAPP)
    endif
else
    USE_ANDROID_OUT := false
    OUT_SYS_PATH := $(PORT_ROOT)/miui/system
    REALLY_CLEAN :=
endif

OUT_JAR_PATH := $(OUT_SYS_PATH)/framework
OUT_APK_PATH := $(OUT_SYS_PATH)/app
