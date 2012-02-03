usage:
	@echo "The main target for porting:"
	@echo "	make zipfile    - to create the full ZIP file"
	@echo "	make zipone     - zipfile, plus the customized actions, such as zip2sd"
	@echo "	make zip2sd     - to push the ZIP file to phone in recovery mode"
	@echo "	make clean      - clear everything for output of this makefile"
	@echo "	make reallyclean- clear everything of related."
	@echo "Other helper targets:"
	@echo "	make apktool-if            - install the framework for apktool"
	@echo "	make verify                - to check if any error in the makefile"
	@echo "	make .build/xxxx.jar-phone - to make out a single jar file and push to phone"
	@echo "	make xxxx.apk.sign         - to generate a xxxx.apk and sign/push to phone"
	@echo "	make clean-xxxx/make xxxx  - just as make under android-build-top"
	@echo "	make sign                  - Sign all generated apks by this makefile and push to phone"

# Target to install apktool framework 
# todo two files for
apktool-if: $(SYSOUT_DIR)/framework/framework.jar $(TMP_DIR)/framework-res.apk
	@echo install framework resources...
	$(APKTOOL) if $(TMP_DIR)/framework-res.apk
	$(APKTOOL) if $(SYSOUT_DIR)/framework/framework-miui-res.apk
	unzip $(ZIP_FILE) system/framework/twframework-res.apk -d $(TMP_DIR)
	$(APKTOOL) if $(TMP_DIR)/system/framework/twframework-res.apk

# Target to release MIUI jar and apks
release: $(RELEASE_MIUI) release-framework-base-src

ifeq ($(strip $(ANDROID_BRANCH)),)
release-framework-base-src:
	$(error To release source code for framework base, run envsetup -b to specify branch)
else
release-framework-base-src:
	@echo "To release source code for framework base..."
	$(TOOL_DIR)/release_source.sh $(ANDROID_BRANCH) $(ANDROID_TOP) $(RELEASE_PATH)
	mkdir -p $(RELEASE_PATH)/src/frameworks/miui
	cp -r $(ANDROID_TOP)/frameworks/miui/overlay $(RELEASE_PATH)/src/frameworks/miui
endif


# Target to sign apks in the connected phone
sign: $(SIGNAPKS)
	@echo Sign competed!

# Target to clean the .build
clean:
	rm -rf $(TMP_DIR)

reallyclean: clean $(ERR_REPORT) $(REALLY_CLEAN)
	@echo "ALL CLEANED!"

# Target to verify env and debug info
verify: $(ERR_REPORT)
	@echo "-------------------"
	@echo ">>>>> ENV VARIABLE:"
	@echo "PORT_ROOT   = $(PORT_ROOT)"
	@echo "ANDROID_TOP = $(ANDROID_TOP)"
	@echo "ANDROID_OUT = $(ANDROID_OUT)"
	@echo "----------------------"
	@echo ">>>>> GLOBAL VARIABLE:"
	@echo "TMP_DIR    = $(TMP_DIR)"
	@echo "ZIP_DIR    = $(ZIP_DIR)"
	@echo "OUT_ZIP    = $(OUT_ZIP)"
	@echo "TOOL_DIR   = $(TOOL_DIR)"
	@echo "APKTOOL    = $(APKTOOL)"
	@echo "SIGN       = $(SIGN)"
	@echo "ADDMIUI    = $(ADDMIUI)"
	@echo "SYSOUT_DIR = $(SYSOUT_DIR)"
	@echo "----------------------"
	@echo ">>>>> LOCAL VARIABLE:"
	@echo "local-use-android-out = $(local-use-android-out)"
	@echo "local-zip-file        = $(local-zip-file)"
	@echo "local-out-zip-file    = $(local-out-zip-file)"
	@echo "local-modified-apps   = $(local-modified-apps)"
	@echo "local-miui-apps       = $(local-miui-apps)"
	@echo "local-remove-apps     = $(local-remove-apps)"
	@echo "local-pre-zip         = $(local-pre-zip)"
	@echo "local-after-zip       = $(local-after-zip)"
	@echo "----------------------"
	@echo ">>>>> INTERNAL VARIABLE:"
	@echo "ERR_REPORT= $(ERR_REPORT)"
	@echo "OUT_SYS_PATH    = $(OUT_SYS_PATH)"
	@echo "OUT_JAR_PATH    = $(OUT_JAR_PATH)"
	@echo "OUT_APK_PATH    = $(OUT_APK_PATH)"
	@echo "ACT_PRE_ZIP     = $(ACT_PRE_ZIP)"
	@echo "ACT_PRE_ZIP     = $(ACT_AFTER_ZIP)"
	@echo "USE_ANDROID_OUT = $(USE_ANDROID_OUT)"
	@echo "RELEASE_MIUI    = $(RELEASE_MIUI)"
	@echo "MIUIAPPS_MOD    = $(MIUIAPPS_MOD)"
	@echo "MIUIAPPS_MOD_NO_RESAPK = $(MIUIAPPS_MOD_NO_RESAPK)"
	@echo "----------------------"
	@echo ">>>>> MORE VARIABLE:"
	@echo "SIGNAPKS     = $(SIGNAPKS)"
	@echo "REALLY-CLEAN = $(REALLY_CLEAN)"

# Push the generated ZIP file to phone
zip2sd: $(OUT_ZIP)
	adb reboot recovery
	sleep 40
	adb shell mount sdcard
	sleep 5
	@echo push $(OUT_ZIP) to phone sdcard
	adb shell rm -f /sdcard/$(OUT_ZIP_FILE)
	adb push $(OUT_ZIP) /sdcard/$(OUT_ZIP_FILE)

error-no-zipfile:
	$(error local-zip-file must be defined to specify the ZIP file)

error-android-env:
	$(error local-use-android-out set as true, should run lunch for android first)

