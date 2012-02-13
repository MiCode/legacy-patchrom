.class public Lcom/android/phone/CallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallFeaturesSetting$TTYHandler;,
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

.field private static final BUTTON_AD_KEY:Ljava/lang/String; = "assisted_dialing_setting"

.field private static final BUTTON_AUTOMATIC_PREFIX_KEY:Ljava/lang/String; = "button_automatic_prefix_key"

.field private static final BUTTON_CALLERID_READOUT_KEY:Ljava/lang/String; = "button_callerid_key"

.field private static final BUTTON_CARRIER_SEL_KEY:Ljava/lang/String; = "button_carrier_sel_key"

.field private static final BUTTON_CDMA_OPTIONS:Ljava/lang/String; = "button_cdma_more_expand_key"

.field private static final BUTTON_CF_EXPAND_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_CLIR_KEY:Ljava/lang/String; = "button_clir_key"

.field private static final BUTTON_CLIR_STATUS_KEY:Ljava/lang/String; = "button_clir_key_status"

.field private static final BUTTON_DTMF_KEY:Ljava/lang/String; = "button_dtmf_settings"

.field private static final BUTTON_EDIT_QUICK_SMS_KEY:Ljava/lang/String; = "quicksms_preference"

.field private static final BUTTON_ENABLE_QUICK_SMS_KEY:Ljava/lang/String; = "qsms_enable_cb"

.field private static final BUTTON_FDN_KEY:Ljava/lang/String; = "button_fdn_key"

.field private static final BUTTON_GSM_UMTS_OPTIONS:Ljava/lang/String; = "button_gsm_more_expand_key"

.field private static final BUTTON_HAC_KEY:Ljava/lang/String; = "button_hac_key"

.field private static final BUTTON_INTLROAMCB_KEY:Ljava/lang/String; = "intlroamcb_settings"

.field private static final BUTTON_IP_CALL_KEY:Ljava/lang/String; = "ip_call_settings"

.field private static final BUTTON_MISC_CATEGORY_KEY:Ljava/lang/String; = "button_misc_category_key"

.field private static final BUTTON_MOS_KEY:Ljava/lang/String; = "button_mos_key"

.field private static final BUTTON_RETRY_KEY:Ljava/lang/String; = "button_auto_retry_key"

.field private static final BUTTON_ROAMING_VMVVM_SELECTION_KEY:Ljava/lang/String; = "button_vvm_roaming_prompt_key"

.field private static final BUTTON_ROOT_QUICK_SMS_KEY:Ljava/lang/String; = "qsms_root"

.field private static final BUTTON_SHOW_DP_KEY:Ljava/lang/String; = "button_show_dial_pad_key"

.field private static final BUTTON_SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options_key"

.field private static final BUTTON_SIP_CALL_OPTIONS_WIFI_ONLY:Ljava/lang/String; = "sip_call_options_wifi_only_key"

.field private static final BUTTON_TTY_KEY:Ljava/lang/String; = "button_tty_mode_key"

.field private static final BUTTON_VOICEMAIL_CATEGORY_KEY:Ljava/lang/String; = "button_voicemail_category_key"

.field private static final BUTTON_VOICEMAIL_KEY:Ljava/lang/String; = "button_voicemail_key"

.field private static final BUTTON_VOICEMAIL_PROVIDER_KEY:Ljava/lang/String; = "button_voicemail_provider_key"

.field private static final BUTTON_VOICEMAIL_SELECTION_KEY:Ljava/lang/String; = "button_voicemail_selection_key"

.field private static final BUTTON_VOICEMAIL_SETTING_KEY:Ljava/lang/String; = "button_voicemail_setting_key"

.field private static final BUTTON_VQ_FLU_KEY:Ljava/lang/String; = "button_vq_flu_key"

.field private static final BUTTON_VQ_KEY:Ljava/lang/String; = "button_vq_key"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final DEFAULT_VM_PROVIDER_KEY:Ljava/lang/String; = ""

.field private static final DOWNLOAD_LOCATION_DIALOG:I = 0x7d1

.field private static final DOWNLOAD_LOCATION_SERVICE_KEY:Ljava/lang/String; = "download_location_service"

.field static final DTMF_TONE_TYPE_LONG:I = 0x1

.field static final DTMF_TONE_TYPE_NORMAL:I = 0x0

.field private static final EVENT_FORWARDING_CHANGED:I = 0x1f5

.field private static final EVENT_FORWARDING_GET_COMPLETED:I = 0x1f6

.field private static final EVENT_VOICEMAIL_CHANGED:I = 0x1f4

.field private static final FALLBACK_AUTOANSWER_TIMEOUT_VALUE:I = -0x1

.field static final FORWARDING_SETTINGS_REASONS:[I = null

.field public static final FWD_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumber"

.field public static final FWD_NUMBER_TIME_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumberTime"

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo; = null

.field public static final FWD_SETTINGS_LENGTH_TAG:Ljava/lang/String; = "#Length"

.field public static final FWD_SETTINGS_TAG:Ljava/lang/String; = "#FWDSettings"

.field public static final FWD_SETTING_NUMBER:Ljava/lang/String; = "#Number"

.field public static final FWD_SETTING_REASON:Ljava/lang/String; = "#Reason"

.field public static final FWD_SETTING_STATUS:Ljava/lang/String; = "#Status"

.field public static final FWD_SETTING_TAG:Ljava/lang/String; = "#Setting"

.field public static final FWD_SETTING_TIME:Ljava/lang/String; = "#Time"

.field private static final FW_GET_RESPONSE_ERROR:I = 0x1f6

.field private static final FW_SET_RESPONSE_ERROR:I = 0x1f5

.field static final HAC_KEY:Ljava/lang/String; = "HACSetting"

.field static final HAC_VAL_OFF:Ljava/lang/String; = "OFF"

.field static final HAC_VAL_ON:Ljava/lang/String; = "ON"

.field public static final IGNORE_PROVIDER_EXTRA:Ljava/lang/String; = "com.android.phone.ProviderToIgnore"

.field private static final KEY_AUTO_ANSWER_TIMEOUT:Ljava/lang/String; = "button_anto_answer_expand_key"

.field private static final LOG_TAG:Ljava/lang/String; = "CallFeaturesSetting"

.field private static final MSG_FW_GET_EXCEPTION:I = 0x192

.field private static final MSG_FW_SET_EXCEPTION:I = 0x191

.field private static final MSG_OK:I = 0x64

.field private static final MSG_VM_EXCEPTION:I = 0x190

.field private static final MSG_VM_NOCHANGE:I = 0x2bc

.field private static final MSG_VM_OK:I = 0x258

.field private static final NUM_PROJECTION:[Ljava/lang/String; = null

.field private static final SHOW_LOCATION_KEY:Ljava/lang/String; = "toggle_location"

.field public static final SIGNOUT_EXTRA:Ljava/lang/String; = "com.android.phone.Signout"

.field private static final SIP_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "sip_settings_category_key"

.field private static final TTY_FULL:I = 0x0

.field private static final TTY_HEAR:I = 0x2

.field private static final TTY_OFF:I = 0x3

.field private static final TTY_TALK:I = 0x1

.field private static final UPDATE_LOCATION_APK_URL:Ljava/lang/String; = "http://android.ikno.cn/download/MotoPlaceService_Update.apk"

.field private static final UPDATE_LOCATION_DIALOG:I = 0x7d0

.field private static final UPDATE_LOCATION_SERVICE_KEY:Ljava/lang/String; = "update_location_service"

.field private static final VM_NOCHANGE_ERROR:I = 0x190

.field private static final VM_NUMBERS_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "vm_numbers"

.field public static final VM_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.VoicemailNumber"

.field public static final VM_NUMBER_TAG:Ljava/lang/String; = "#VMNumber"

.field private static final VM_RESPONSE_ERROR:I = 0x1f4

.field private static final VOICEMAIL_DIALOG_CONFIRM:I = 0x258

.field private static final VOICEMAIL_FWD_READING_DIALOG:I = 0x25a

.field private static final VOICEMAIL_FWD_SAVING_DIALOG:I = 0x259

.field private static final VOICEMAIL_PREF_ID:I = 0x1

.field private static final VOICEMAIL_PROVIDER_CFG_ID:I = 0x2

.field private static final VOICE_QUALITY_DIALOG:I = 0x3e8

.field static final preferredTtyMode:I


# instance fields
.field final VM_VVM_ROAMING_SELECTION:Ljava/lang/String;

.field final VM_VVM_SELECTION:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoAnswerPreference:Landroid/preference/ListPreference;

.field private mButtonAssistedDialing:Landroid/preference/Preference;

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonAutomaticPrefix:Landroid/preference/PreferenceScreen;

.field private mButtonCFExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCallerId:Landroid/preference/ListPreference;

.field private mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonEditQuickSms:Landroid/preference/PreferenceScreen;

.field private mButtonEnableQuickSms:Landroid/preference/CheckBoxPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonIPCallSettings:Landroid/preference/EditTextPreference;

.field private mButtonIntlRoamCBSettings:Landroid/preference/EditTextPreference;

.field private mButtonMOS:Landroid/preference/CheckBoxPreference;

.field private mButtonMoreExpand:Landroid/preference/PreferenceScreen;

.field private mButtonShowDialPad:Landroid/preference/PreferenceScreen;

.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mButtonVQFluence:Landroid/preference/ListPreference;

.field private mButtonVoiceQuality:Landroid/preference/Preference;

.field private mCallForward:Landroid/preference/PreferenceScreen;

.field private mContactListIntent:Landroid/content/Intent;

.field mCurrentDialogId:I

.field private mDownloadLocationPreference:Landroid/preference/Preference;

.field mForwardingChangeResults:[Landroid/os/AsyncResult;

.field mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mGetOptionComplete:Landroid/os/Handler;

.field private mIsNetworkSettingENS:Z

.field private mIsVoicemailEditable:Z

.field private mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

.field private mListPrefVMSelection:Landroid/preference/ListPreference;

.field private mLocationPreference:Landroid/preference/CheckBoxPreference;

.field mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPreviousVMProviderKey:Ljava/lang/String;

.field private mSetOptionComplete:Landroid/os/Handler;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mUpdateLocationPreference:Landroid/preference/CheckBoxPreference;

.field mVMProviderSettingsForced:Z

.field private mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;

.field ttyHandler:Lcom/android/phone/CallFeaturesSetting$TTYHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 134
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    .line 137
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 340
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 201
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    .line 202
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    .line 203
    const-string v0, "vm_vvm_selection"

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->VM_VVM_SELECTION:Ljava/lang/String;

    .line 204
    const-string v0, "vm_vvm_roaming_selection"

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->VM_VVM_ROAMING_SELECTION:Ljava/lang/String;

    .line 311
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAssistedDialing:Landroid/preference/Preference;

    .line 324
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mIsVoicemailEditable:Z

    .line 432
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 437
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    .line 442
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 447
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 452
    iput v2, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 458
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 467
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    .line 1018
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$1;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 1158
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$2;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 2039
    return-void
.end method

.method private static ExistUpdatedLocationPackage(Landroid/app/Activity;)Z
    .locals 6
    .parameter "act"

    .prologue
    const/4 v4, 0x0

    const-string v5, "CallFeaturesSetting"

    .line 2362
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2363
    .local v2, manager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.hiapk.service.placeupdate"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2364
    .local v1, mainIntent:Landroid/content/Intent;
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2366
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2367
    const-string v3, "CallFeaturesSetting"

    const-string v3, "ExistUpdatedLocationPackage = false"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2371
    :goto_0
    return v3

    .line 2370
    :cond_0
    const-string v3, "CallFeaturesSetting"

    const-string v3, "ExistUpdatedLocationPackage = true"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallFeaturesSetting;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mUpdateLocationPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private createSipCallSettings()V
    .locals 3

    .prologue
    .line 1879
    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1880
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSipManager:Landroid/net/sip/SipManager;

    .line 1881
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 1882
    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1883
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getSipCallOptionPreference()Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    .line 1884
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1885
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1888
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1890
    :cond_0
    return-void
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 2345
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting settings for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2346
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_1

    .line 2353
    :goto_0
    return-void

    .line 2349
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private fixPreferenceOrder(Landroid/preference/Preference;Landroid/preference/Preference;Z)V
    .locals 4
    .parameter "prefToMove"
    .parameter "refPref"
    .parameter "putBefore"

    .prologue
    .line 1999
    sget-boolean v2, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "fixPreferenceOrder(Pref, Pref, boolean)..."

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2002
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    .line 2003
    .local v0, baseIndex:I
    if-eqz p3, :cond_1

    const/4 v2, 0x1

    sub-int v2, v0, v2

    :goto_0
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOrder(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2007
    .end local v0           #baseIndex:I
    :goto_1
    return-void

    .line 2003
    .restart local v0       #baseIndex:I
    :cond_1
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    .line 2004
    .end local v0           #baseIndex:I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2005
    .local v1, npe:Ljava/lang/NullPointerException;
    const-string v2, "CallFeaturesSetting"

    const-string v3, "One of the preferences passed in was null, ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2356
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2357
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getSipCallOptionPreference()Landroid/preference/ListPreference;
    .locals 4

    .prologue
    .line 1895
    const-string v3, "sip_call_options_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1897
    .local v1, wifiAnd3G:Landroid/preference/ListPreference;
    const-string v3, "sip_call_options_wifi_only_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 1899
    .local v2, wifiOnly:Landroid/preference/ListPreference;
    const-string v3, "sip_settings_category_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 1901
    .local v0, sipSettings:Landroid/preference/PreferenceGroup;
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1902
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object v3, v2

    .line 1906
    :goto_0
    return-object v3

    .line 1905
    :cond_0
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object v3, v1

    .line 1906
    goto :goto_0
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 6

    .prologue
    .line 1218
    sget-boolean v4, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v4, :cond_0

    .line 1219
    const-string v4, "handleSetVMMessage: set VM request complete"

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1221
    :cond_0
    const/4 v3, 0x1

    .line 1222
    .local v3, success:Z
    const/4 v1, 0x0

    .line 1223
    .local v1, fwdFailure:Z
    const-string v0, ""

    .line 1224
    .local v0, exceptionMessage:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    if-eqz v4, :cond_1

    .line 1225
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 1226
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    .line 1227
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1228
    const/4 v3, 0x0

    .line 1229
    const/4 v1, 0x1

    .line 1234
    .end local v2           #i:I
    :cond_1
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v4, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 1235
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v4, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1236
    const/4 v3, 0x0

    .line 1238
    :cond_2
    if-eqz v3, :cond_5

    .line 1239
    sget-boolean v4, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "change VM success!"

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1240
    :cond_3
    const/16 v4, 0x258

    invoke-direct {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1250
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 1251
    return-void

    .line 1225
    .restart local v2       #i:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1242
    .end local v2           #i:I
    :cond_5
    if-eqz v1, :cond_6

    .line 1243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change FW failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1244
    const/16 v4, 0x191

    invoke-direct {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    goto :goto_1

    .line 1246
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change VM failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1247
    const/16 v4, 0x190

    invoke-direct {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    goto :goto_1
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 2033
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2034
    .local v0, option:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 2035
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 2037
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2038
    return-void
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 2015
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2020
    .local v0, buttonTtyMode:I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2021
    .local v1, ttyModeChanged:Landroid/content/Intent;
    const-string v2, "ttyEnabled"

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2022
    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 2023
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2025
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2026
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->ttyHandler:Lcom/android/phone/CallFeaturesSetting$TTYHandler;

    #calls: Lcom/android/phone/CallFeaturesSetting$TTYHandler;->updatePreferredTtyModeSummary(I)V
    invoke-static {v2, v0}, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->access$700(Lcom/android/phone/CallFeaturesSetting$TTYHandler;I)V

    .line 2028
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 2030
    return-void

    .line 2021
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, v2, v3}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 971
    return-void
.end method

.method private initVoiceMailProviders()V
    .locals 23

    .prologue
    .line 2161
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "vm_numbers"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 2165
    const/4 v15, 0x0

    .line 2166
    .local v15, providerToIgnore:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 2167
    .local v10, mVoicemailAction:Ljava/lang/String;
    if-eqz v10, :cond_3

    const-string v19, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 2168
    sget-boolean v19, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v19, :cond_0

    const-string v19, "ACTION_ADD_VOICEMAIL"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2169
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2170
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2172
    :cond_1
    sget-boolean v19, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v19, :cond_2

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "providerToIgnore="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2173
    :cond_2
    if-eqz v15, :cond_3

    .line 2174
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    .line 2178
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->clear()V

    .line 2181
    const v19, 0x7f0b020f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2182
    .local v11, myCarrier:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    const-string v20, ""

    new-instance v21, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object v1, v11

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2185
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 2186
    .local v13, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2187
    .local v7, intent:Landroid/content/Intent;
    const-string v19, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2188
    const/16 v19, 0x0

    move-object v0, v13

    move-object v1, v7

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    .line 2189
    .local v16, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v9, v19, 0x1

    .line 2193
    .local v9, len:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    move v0, v6

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 2194
    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 2195
    .local v17, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    .line 2196
    .local v3, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 2197
    .local v8, key:Ljava/lang/String;
    sget-boolean v19, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v19, :cond_4

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Loading "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2198
    :cond_4
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2199
    sget-boolean v19, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v19, :cond_5

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignoring "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2200
    :cond_5
    add-int/lit8 v9, v9, -0x1

    .line 2193
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2203
    :cond_6
    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2204
    .local v12, nameForDisplay:Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 2205
    .local v14, providerIntent:Landroid/content/Intent;
    const-string v19, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2206
    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v14

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    move-object/from16 v0, v20

    move-object v1, v12

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v19

    move-object v1, v8

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2216
    .end local v3           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    .end local v8           #key:Ljava/lang/String;
    .end local v12           #nameForDisplay:Ljava/lang/String;
    .end local v14           #providerIntent:Landroid/content/Intent;
    .end local v17           #ri:Landroid/content/pm/ResolveInfo;
    :cond_7
    new-array v4, v9, [Ljava/lang/String;

    .line 2217
    .local v4, entries:[Ljava/lang/String;
    move v0, v9

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2218
    .local v18, values:[Ljava/lang/String;
    const/16 v19, 0x0

    aput-object v11, v4, v19

    .line 2219
    const/16 v19, 0x0

    const-string v20, ""

    aput-object v20, v18, v19

    .line 2220
    const/4 v5, 0x1

    .line 2221
    .local v5, entryIdx:I
    const/4 v6, 0x0

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    move v0, v6

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 2222
    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 2223
    .restart local v8       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 2221
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2226
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    move-object v0, v3

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v4, v5

    .line 2227
    aput-object v8, v18, v5

    .line 2228
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2231
    .end local v8           #key:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2234
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 2235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 2236
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2010
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private isVvmAvailable(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2377
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2378
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2379
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2380
    .local v3, packageActivityName:Ljava/lang/String;
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 2382
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2383
    .local v2, info:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_0

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v7, v7

    if-nez v7, :cond_1

    :cond_0
    move v7, v9

    .line 2396
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return v7

    .line 2385
    .restart local v2       #info:Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v7, v7

    if-ge v1, v7, :cond_3

    .line 2386
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v7, v7, v1

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2387
    .local v6, target:Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    move v7, v10

    .line 2388
    goto :goto_0

    .line 2385
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v6           #target:Ljava/lang/String;
    :cond_3
    move v7, v9

    .line 2390
    goto :goto_0

    .line 2391
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v7

    move-object v0, v7

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v7, v9

    .line 2392
    goto :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    move v7, v9

    .line 2396
    goto :goto_0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    .locals 12
    .parameter "key"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2307
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#VMNumber"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2309
    .local v6, vmNumberSetting:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 2310
    :cond_0
    sget-boolean v7, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Settings for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    :cond_1
    move-object v7, v10

    .line 2338
    :goto_0
    return-object v7

    .line 2314
    :cond_2
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2315
    .local v0, cfi:[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2316
    .local v1, fwdKey:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2317
    .local v2, fwdLen:I
    if-lez v2, :cond_3

    .line 2318
    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 2319
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_3

    .line 2320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2321
    .local v4, settingKey:Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v7, v0, v3

    .line 2322
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 2324
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Reason"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 2327
    aget-object v7, v0, v3

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 2328
    aget-object v7, v0, v3

    const/16 v8, 0x91

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 2329
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Number"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 2331
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x14

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 2319
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 2336
    .end local v3           #i:I
    .end local v4           #settingKey:Ljava/lang/String;
    :cond_3
    new-instance v5, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    invoke-direct {v5, v6, v0}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2337
    .local v5, settings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    sget-boolean v7, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded settings for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    :cond_4
    move-object v7, v5

    .line 2338
    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2104
    const-string v0, "CallFeaturesSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .parameter "ai"

    .prologue
    .line 2239
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .locals 10
    .parameter "key"
    .parameter "newSettings"

    .prologue
    const-string v9, "#Length"

    .line 2269
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v7, :cond_1

    .line 2296
    :cond_0
    :goto_0
    return-void

    .line 2272
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v0

    .line 2273
    .local v0, curSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    invoke-virtual {p2, v0}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2274
    sget-boolean v7, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not saving setting for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " since they have not changed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2277
    :cond_2
    sget-boolean v7, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Saving settings for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2278
    :cond_3
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2279
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#VMNumber"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2280
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2281
    .local v3, fwdKey:Ljava/lang/String;
    iget-object v5, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2282
    .local v5, s:[Lcom/android/internal/telephony/CallForwardInfo;
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v5, v7, :cond_4

    .line 2283
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    array-length v8, v5

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2284
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_5

    .line 2285
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2286
    .local v6, settingKey:Ljava/lang/String;
    aget-object v2, v5, v4

    .line 2287
    .local v2, fi:Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Reason"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2289
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2290
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2284
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2293
    .end local v2           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v4           #i:I
    .end local v6           #settingKey:Ljava/lang/String;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2295
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .locals 5
    .parameter "key"
    .parameter "newSettings"

    .prologue
    const/4 v4, 0x0

    const-string v2, ""

    .line 975
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveVoiceMailAndForwardingNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 976
    :cond_0
    iget-object v0, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 978
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 979
    const-string v0, ""

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 982
    :cond_1
    iget-object v0, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 983
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newFwdNumber "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v1, v1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 988
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 989
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "ignoring forwarding setting since this is CDMA phone"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 990
    :cond_3
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 994
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v0, v1, :cond_6

    .line 995
    const/16 v0, 0x2bc

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1016
    :goto_1
    return-void

    :cond_5
    move v1, v4

    .line 983
    goto :goto_0

    .line 999
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 1003
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1005
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "Reading current forwarding settings"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1006
    :cond_7
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1008
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v1, 0x0

    aput-object v1, v0, v4

    .line 1009
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v3, 0x1f6

    invoke-virtual {v2, v3, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1012
    const/16 v0, 0x25a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    goto :goto_1

    .line 1014
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 1127
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    .line 1128
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 1129
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_4

    .line 1130
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    new-array v0, v0, [Landroid/os/AsyncResult;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    .line 1132
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v6, v0, v8

    .line 1133
    .local v6, fi:Lcom/android/internal/telephony/CallForwardInfo;
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting fwd #: 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    :goto_0
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v7, 0x1f5

    invoke-virtual {v5, v7, v8, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1144
    const/16 v0, 0x259

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    .line 1148
    .end local v6           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save voicemail #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1149
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1153
    return-void

    .restart local v6       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_3
    move v1, v8

    .line 1134
    goto :goto_0

    .line 1146
    .end local v6           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_4
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "Not touching fwd #"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showVMDialog(I)V
    .locals 1
    .parameter "msgStatus"

    .prologue
    .line 1447
    sparse-switch p1, :sswitch_data_0

    .line 1467
    :goto_0
    return-void

    .line 1449
    :sswitch_0
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    goto :goto_0

    .line 1452
    :sswitch_1
    const/16 v0, 0x1f5

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    goto :goto_0

    .line 1455
    :sswitch_2
    const/16 v0, 0x1f6

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    goto :goto_0

    .line 1458
    :sswitch_3
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    goto :goto_0

    .line 1461
    :sswitch_4
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    goto :goto_0

    .line 1447
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .parameter "preference"

    .prologue
    .line 2251
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 2252
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 2253
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 2254
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2259
    :cond_0
    return-void

    .line 2252
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 2

    .prologue
    .line 849
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToPreviousVoicemailProvider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 854
    :cond_1
    return-void
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 10
    .parameter "currentProviderSetting"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v6, ""

    .line 2115
    iget-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->mIsVoicemailEditable:Z

    if-nez v4, :cond_2

    .line 2116
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .line 2117
    .local v3, vmNumber:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 2118
    :cond_0
    const v4, 0x7f0b0381

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2120
    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const v5, 0x7f0b02fa

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 2121
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2122
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2149
    .end local v3           #vmNumber:Ljava/lang/String;
    :goto_0
    return-void

    .line 2127
    :cond_2
    move-object v0, p1

    .line 2128
    .local v0, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    .line 2134
    .local v1, provider:Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;
    if-nez v1, :cond_3

    .line 2135
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v5, 0x7f0b020e

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2136
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v5, ""

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2137
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const-string v5, ""

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2138
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2139
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2141
    :cond_3
    iget-object v2, v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 2142
    .local v2, providerName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2143
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2144
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0383

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2146
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2147
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v5, v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 3

    .prologue
    .line 1259
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v1, :cond_0

    .line 1271
    :goto_0
    return-void

    .line 1263
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1264
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1265
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1267
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1268
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    move-object v0, v1

    .line 1270
    .local v0, summary:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1268
    .end local v0           #summary:Ljava/lang/String;
    :cond_2
    const v1, 0x7f0b0381

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 10
    .parameter "ar"
    .parameter "idx"

    .prologue
    const-string v8, "CallFeaturesSetting"

    .line 1044
    sget-boolean v6, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleForwardingSettingsReadResult: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_0
    const/4 v3, 0x0

    .line 1046
    .local v3, error:Ljava/lang/Throwable;
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 1047
    sget-boolean v6, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FwdRead: ar.exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_1
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1051
    :cond_2
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_4

    .line 1052
    sget-boolean v6, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FwdRead: userObj="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_3
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v3           #error:Ljava/lang/Throwable;
    check-cast v3, Ljava/lang/Throwable;

    .line 1058
    .restart local v3       #error:Ljava/lang/Throwable;
    :cond_4
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v6, :cond_6

    .line 1059
    sget-boolean v6, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignoring fwd reading result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_5
    :goto_0
    return-void

    .line 1064
    :cond_6
    if-eqz v3, :cond_8

    .line 1065
    sget-boolean v6, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v6, :cond_7

    const-string v6, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error discovered for fwd read : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_7
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1069
    const/16 v6, 0x25a

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :goto_1
    const/16 v6, 0x192

    invoke-direct {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    goto :goto_0

    .line 1078
    :cond_8
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v6

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v1, v0

    .line 1079
    .local v1, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .line 1080
    .local v4, fi:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_9

    .line 1081
    aget-object v6, v1, v5

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_e

    .line 1082
    aget-object v4, v1, v5

    .line 1086
    :cond_9
    if-nez v4, :cond_f

    .line 1090
    sget-boolean v6, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v6, :cond_a

    const-string v6, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating default info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_a
    new-instance v4, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v4           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v4}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1092
    .restart local v4       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v6, 0x0

    iput v6, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1093
    sget-object v6, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v6, v6, p2

    iput v6, v4, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1094
    const/4 v6, 0x1

    iput v6, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1098
    :cond_b
    :goto_3
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v4, v6, p2

    .line 1101
    const/4 v2, 0x1

    .line 1102
    .local v2, done:Z
    const/4 v5, 0x0

    :goto_4
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v6, v6

    if-ge v5, v6, :cond_c

    .line 1103
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v6, v6, v5

    if-nez v6, :cond_10

    .line 1104
    const/4 v2, 0x0

    .line 1108
    :cond_c
    if-eqz v2, :cond_11

    .line 1109
    sget-boolean v6, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v6, :cond_d

    const-string v6, "CallFeaturesSetting"

    const-string v6, "Done receiving fwd info"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_d
    const/16 v6, 0x25a

    :try_start_1
    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1116
    :goto_5
    const-string v6, ""

    new-instance v7, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7, v8, v9}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v6, v7}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 1118
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto/16 :goto_0

    .line 1080
    .end local v2           #done:Z
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1096
    :cond_f
    sget-boolean v6, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v6, :cond_b

    const-string v6, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1102
    .restart local v2       #done:Z
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1120
    :cond_11
    sget-boolean v6, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "CallFeaturesSetting"

    const-string v6, "Not done receiving fwd info"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1070
    .end local v1           #cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v2           #done:Z
    .end local v4           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v5           #i:I
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 1113
    .restart local v1       #cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v2       #done:Z
    .restart local v4       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v5       #i:I
    :catch_1
    move-exception v6

    goto :goto_5
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 862
    const/4 v4, 0x2

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_13

    .line 863
    const/4 v11, 0x0

    .line 866
    .local v11, failure:Z
    sget-boolean v4, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVMProviderSettingsForced: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 867
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    move v15, v0

    .line 868
    .local v15, isVMProviderSettingsForced:Z
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 870
    const/16 v17, 0x0

    .line 871
    .local v17, vmNum:Ljava/lang/String;
    const/4 v4, -0x1

    move/from16 v0, p2

    move v1, v4

    if-eq v0, v1, :cond_5

    .line 872
    sget-boolean v4, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "onActivityResult: vm provider cfg result not OK."

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 873
    :cond_1
    const/4 v11, 0x1

    .line 901
    :cond_2
    :goto_0
    if-eqz v11, :cond_10

    .line 902
    sget-boolean v4, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "Failure in return from voicemail provider"

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 903
    :cond_3
    if-eqz v15, :cond_f

    .line 904
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    .line 958
    .end local v11           #failure:Z
    .end local v15           #isVMProviderSettingsForced:Z
    .end local v17           #vmNum:Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 875
    .restart local v11       #failure:Z
    .restart local v15       #isVMProviderSettingsForced:Z
    .restart local v17       #vmNum:Ljava/lang/String;
    :cond_5
    if-nez p3, :cond_7

    .line 876
    sget-boolean v4, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v4, :cond_6

    const-string v4, "onActivityResult: vm provider cfg result has no data"

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 877
    :cond_6
    const/4 v11, 0x1

    goto :goto_0

    .line 879
    :cond_7
    const-string v4, "com.android.phone.Signout"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 880
    sget-boolean v4, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v4, :cond_8

    const-string v4, "Provider requested signout"

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 881
    :cond_8
    if-eqz v15, :cond_a

    .line 882
    sget-boolean v4, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v4, :cond_9

    const-string v4, "Going back to previous provider on signout"

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 883
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 885
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v16

    .line 886
    .local v16, victim:Ljava/lang/String;
    sget-boolean v4, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Relaunching activity and ignoring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 887
    :cond_b
    new-instance v14, Landroid/content/Intent;

    const-string v4, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    .local v14, i:Landroid/content/Intent;
    const-string v4, "com.android.phone.ProviderToIgnore"

    move-object v0, v14

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    const/high16 v4, 0x400

    invoke-virtual {v14, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 890
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 894
    .end local v14           #i:Landroid/content/Intent;
    .end local v16           #victim:Ljava/lang/String;
    :cond_c
    const-string v4, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 895
    if-eqz v17, :cond_d

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 896
    :cond_d
    sget-boolean v4, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v4, :cond_e

    const-string v4, "onActivityResult: vm provider cfg result has no vmnum"

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 897
    :cond_e
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 906
    :cond_f
    sget-boolean v4, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "Not switching back the provider since this is not forced config"

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 910
    :cond_10
    const-string v4, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 914
    .local v12, fwdNum:Ljava/lang/String;
    const-string v4, "com.android.phone.ForwardingNumberTime"

    const/16 v5, 0x14

    move-object/from16 v0, p3

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 916
    .local v13, fwdNumTime:I
    sget-boolean v4, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v4, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult: vm provider cfg result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v12, :cond_12

    const-string v5, "has"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " forwarding number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 918
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v12

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto/16 :goto_1

    .line 916
    :cond_12
    const-string v5, " does not have"

    goto :goto_2

    .line 923
    .end local v11           #failure:Z
    .end local v12           #fwdNum:Ljava/lang/String;
    .end local v13           #fwdNumTime:I
    .end local v15           #isVMProviderSettingsForced:Z
    .end local v17           #vmNum:Ljava/lang/String;
    :cond_13
    const/4 v4, -0x1

    move/from16 v0, p2

    move v1, v4

    if-eq v0, v1, :cond_14

    .line 924
    sget-boolean v4, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "onActivityResult: contact picker result not OK."

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 928
    :cond_14
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 932
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 934
    .local v5, mIntentData:Landroid/net/Uri;
    if-nez v5, :cond_15

    .line 935
    const-string v4, "CallFeaturesSetting"

    const-string v5, "Intent Data is null"

    .end local v5           #mIntentData:Landroid/net/Uri;
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 938
    .restart local v5       #mIntentData:Landroid/net/Uri;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 940
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    .line 943
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_17

    .line 944
    sget-boolean v4, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v4, :cond_16

    const-string v4, "onActivityResult: bad contact data, no results found."

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 945
    :cond_16
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 949
    :cond_17
    packed-switch p1, :pswitch_data_0

    .line 957
    .end local v5           #mIntentData:Landroid/net/Uri;
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 951
    .restart local v5       #mIntentData:Landroid/net/Uri;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v5           #mIntentData:Landroid/net/Uri;
    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_3

    .line 949
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v1, 0x1f6

    .line 1413
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1414
    packed-switch p2, :pswitch_data_0

    .line 1438
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1416
    :pswitch_0
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Neutral button"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1419
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "Negative button"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1420
    :cond_1
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_0

    .line 1423
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    .line 1427
    :pswitch_2
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "Positive button"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1428
    :cond_2
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_3

    .line 1431
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0

    .line 1433
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    goto :goto_0

    .line 1414
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 33
    .parameter "icicle"

    .prologue
    .line 1475
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1476
    sget-boolean v29, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v29, :cond_0

    const-string v29, "Creating activity"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1477
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1479
    const v29, 0x7f050001

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1481
    const-string v29, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    .line 1484
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    .line 1485
    .local v22, prefSet:Landroid/preference/PreferenceScreen;
    if-nez v22, :cond_2

    .line 1875
    :cond_1
    :goto_0
    return-void

    .line 1488
    :cond_2
    invoke-virtual/range {v22 .. v22}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v24

    .line 1489
    .local v24, settings:Landroid/content/SharedPreferences;
    if-eqz v24, :cond_3

    .line 1490
    const-string v29, "voicemail_number_editable"

    const/16 v30, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->mIsVoicemailEditable:Z

    .line 1495
    :cond_3
    const-string v29, "ro.mot.vvm_editable"

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    if-nez v29, :cond_27

    .line 1496
    const-string v29, "button_voicemail_category_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 1497
    .local v19, mVoiceMailPref:Landroid/preference/Preference;
    if-eqz v19, :cond_4

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1509
    .end local v19           #mVoiceMailPref:Landroid/preference/Preference;
    :cond_4
    :goto_1
    const-string v29, "button_automatic_prefix_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonAutomaticPrefix:Landroid/preference/PreferenceScreen;

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutomaticPrefix:Landroid/preference/PreferenceScreen;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090023

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-nez v29, :cond_5

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutomaticPrefix:Landroid/preference/PreferenceScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1518
    :cond_5
    const-string v29, "button_callerid_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonCallerId:Landroid/preference/ListPreference;

    .line 1519
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090026

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-nez v29, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallerId:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_29

    .line 1522
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "tts_caller_id_readout"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1523
    .local v6, callerIdStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallerId:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1526
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f06000c

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    .line 1527
    .local v26, txts:[Ljava/lang/String;
    if-ltz v6, :cond_28

    const/16 v29, 0x2

    move v0, v6

    move/from16 v1, v29

    if-gt v0, v1, :cond_28

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallerId:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    aget-object v30, v26, v6

    invoke-virtual/range {v29 .. v30}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1536
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallerId:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1543
    .end local v6           #callerIdStatus:I
    .end local v26           #txts:[Ljava/lang/String;
    :goto_3
    const-string v29, "button_mos_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonMOS:Landroid/preference/CheckBoxPreference;

    .line 1544
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090009

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-nez v29, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonMOS:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_6

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonMOS:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1546
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonMOS:Landroid/preference/CheckBoxPreference;

    .line 1549
    :cond_6
    const-string v29, "button_vq_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonVoiceQuality:Landroid/preference/Preference;

    .line 1550
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f09000f

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-nez v29, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonVoiceQuality:Landroid/preference/Preference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonVoiceQuality:Landroid/preference/Preference;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1552
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonVoiceQuality:Landroid/preference/Preference;

    .line 1555
    :cond_7
    const-string v29, "button_carrier_sel_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    .line 1556
    invoke-virtual/range {v22 .. v22}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v29

    if-eqz v29, :cond_8

    .line 1557
    invoke-virtual/range {v22 .. v22}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v29

    const-string v30, "network_setting_ens"

    const/16 v31, 0x0

    invoke-interface/range {v29 .. v31}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->mIsNetworkSettingENS:Z

    .line 1559
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallFeaturesSetting;->mIsNetworkSettingENS:Z

    move/from16 v29, v0

    if-eqz v29, :cond_9

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getReadPlmnModeFlag()Z

    move-result v29

    if-nez v29, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1569
    :cond_9
    const-string v29, "button_vq_flu_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonVQFluence:Landroid/preference/ListPreference;

    .line 1570
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090013

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-eqz v29, :cond_2a

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonVQFluence:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1577
    :goto_4
    const-string v29, "button_dtmf_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 1580
    const-string v29, "assisted_dialing_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonAssistedDialing:Landroid/preference/Preference;

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "calling_gsm_ad_enabled"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 1582
    .local v13, is33861on:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    if-nez v13, :cond_a

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAssistedDialing:Landroid/preference/Preference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAssistedDialing:Landroid/preference/Preference;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1589
    :cond_a
    const-string v29, "button_auto_retry_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 1590
    const-string v29, "button_hac_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 1591
    const-string v29, "button_tty_mode_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 1592
    const-string v29, "button_voicemail_provider_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1593
    const-string v29, "button_anto_answer_expand_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswerPreference:Landroid/preference/ListPreference;

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_b

    .line 1597
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090029

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-eqz v29, :cond_2b

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1599
    const-string v29, "button_voicemail_setting_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1601
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->initVoiceMailProviders()V

    .line 1610
    :cond_b
    :goto_5
    const-string v29, "button_voicemail_selection_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    .line 1612
    const-string v29, "button_vvm_roaming_prompt_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    .line 1613
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->isVvmAvailable(Landroid/content/Context;)Z

    move-result v29

    if-nez v29, :cond_2c

    .line 1614
    const-string v29, "button_voicemail_category_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/PreferenceCategory;

    .line 1615
    .local v28, vmCategory:Landroid/preference/PreferenceCategory;
    if-eqz v28, :cond_d

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_c

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1618
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    .line 1620
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1622
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    .line 1645
    .end local v28           #vmCategory:Landroid/preference/PreferenceCategory;
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_e

    .line 1646
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f09000a

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-eqz v29, :cond_30

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1654
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_f

    .line 1655
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f09000b

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-eqz v29, :cond_31

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1664
    :cond_f
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090020

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-nez v29, :cond_32

    .line 1666
    const-string v29, "ip_call_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    .line 1667
    sget-boolean v29, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v29, :cond_10

    const-string v29, "ftr_33076_ipcall is false. remove IP Call from call setting"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1668
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_11

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1670
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    .line 1695
    :cond_11
    :goto_9
    const-string v29, "intlroamcb_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonIntlRoamCBSettings:Landroid/preference/EditTextPreference;

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIntlRoamCBSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f09002b

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 1697
    invoke-static/range {p0 .. p0}, Lcom/android/phone/Utils;->checkIntRoamCallBackPrefix(Landroid/content/Context;)V

    .line 1698
    const-string v29, "INTROAMCB_PREFIX"

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 1699
    .local v25, sharedData:Landroid/content/SharedPreferences;
    const-string v29, "introamcb_prefix"

    const-string v30, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1700
    .local v12, introamcb_prefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIntlRoamCBSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    if-nez v29, :cond_37

    .line 1702
    invoke-static/range {p0 .. p0}, Lcom/android/phone/Utils;->getIntRoamCallBackPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1703
    .local v8, defaultIntlRoamCBPrefix:Ljava/lang/String;
    if-nez v8, :cond_36

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIntlRoamCBSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v29, v0

    const v30, 0x7f0b0472

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1711
    .end local v8           #defaultIntlRoamCBPrefix:Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIntlRoamCBSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1716
    .end local v12           #introamcb_prefix:Ljava/lang/String;
    .end local v25           #sharedData:Landroid/content/SharedPreferences;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090021

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-nez v29, :cond_38

    .line 1717
    const-string v29, "toggle_location"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mLocationPreference:Landroid/preference/CheckBoxPreference;

    .line 1718
    sget-boolean v29, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v29, :cond_13

    const-string v29, "ftr_33076_china_location is false. remove Location from call setting"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1719
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mLocationPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_14

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mLocationPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1721
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mLocationPreference:Landroid/preference/CheckBoxPreference;

    .line 1729
    :cond_14
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_15

    .line 1730
    const-string v29, "ro.mot.hw.HAC"

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090008

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-eqz v29, :cond_3a

    .line 1732
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "hearing_aid"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 1733
    .local v10, hac:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    if-eqz v10, :cond_39

    const/16 v30, 0x1

    :goto_c
    invoke-virtual/range {v29 .. v30}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1743
    .end local v10           #hac:I
    :cond_15
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswerPreference:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_19

    .line 1744
    sget-boolean v29, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v29, :cond_16

    const-string v29, "enter onResume (mAutoAnswerPreference != null)"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1745
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswerPreference:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    const v30, 0x7f06000a

    invoke-virtual/range {v29 .. v30}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswerPreference:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    const v30, 0x7f06000b

    invoke-virtual/range {v29 .. v30}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1747
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "auto_answer_timeout"

    const/16 v31, -0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 1749
    .local v27, value:I
    sget-boolean v29, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v29, :cond_17

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "enter onResume value = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1750
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswerPreference:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswerPreference:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v11

    .line 1752
    .local v11, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswerPreference:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 1753
    .local v9, entries:[Ljava/lang/CharSequence;
    sget-boolean v29, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v29, :cond_18

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "enter onResume index = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1754
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswerPreference:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    aget-object v30, v9, v11

    invoke-virtual/range {v29 .. v30}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswerPreference:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1757
    .end local v9           #entries:[Ljava/lang/CharSequence;
    .end local v11           #index:I
    .end local v27           #value:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1a

    .line 1758
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090007

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-eqz v29, :cond_3b

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1760
    new-instance v29, Lcom/android/phone/CallFeaturesSetting$TTYHandler;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting$TTYHandler;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->ttyHandler:Lcom/android/phone/CallFeaturesSetting$TTYHandler;

    .line 1767
    :cond_1a
    :goto_e
    const-string v29, "button_fdn_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 1768
    .local v17, mButtonFDNPref:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090005

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-nez v29, :cond_20

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v21

    .line 1772
    .local v21, phoneType:I
    const-string v29, "button_cdma_more_expand_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 1773
    .local v20, options:Landroid/preference/Preference;
    if-eqz v20, :cond_1b

    .line 1774
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1775
    :cond_1b
    const-string v29, "button_gsm_more_expand_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 1776
    if-eqz v20, :cond_1c

    .line 1777
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1779
    :cond_1c
    const/16 v29, 0x2

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_3c

    .line 1780
    sget-boolean v29, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v29, :cond_1d

    const-string v29, "onCreate(): CDMA phone, removing GSM preferences and adding CDMA"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1782
    :cond_1d
    const-string v29, "button_carrier_sel_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 1783
    .local v18, mCarrierselPref:Landroid/preference/Preference;
    if-eqz v18, :cond_1e

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1786
    :cond_1e
    const-string v29, "ro.mot.phonemode.vzw4gphone"

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1f

    if-eqz v17, :cond_1f

    .line 1787
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1793
    :cond_1f
    const v29, 0x7f050005

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1813
    .end local v18           #mCarrierselPref:Landroid/preference/Preference;
    .end local v20           #options:Landroid/preference/Preference;
    .end local v21           #phoneType:I
    :cond_20
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090018

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-nez v29, :cond_40

    .line 1815
    const-string v29, "qsms_root"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 1816
    .local v5, buttonRootQuickSms:Landroid/preference/Preference;
    sget-boolean v29, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v29, :cond_21

    const-string v29, "ftr_16919_quicksms is false. remove quick sms preference from call setting"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1817
    :cond_21
    if-eqz v5, :cond_22

    .line 1818
    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1830
    .end local v5           #buttonRootQuickSms:Landroid/preference/Preference;
    :cond_22
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090027

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 1831
    .local v14, isFdnDisabled:Z
    if-eqz v14, :cond_23

    if-eqz v17, :cond_23

    .line 1832
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1837
    :cond_23
    const-string v29, "button_show_dial_pad_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonShowDialPad:Landroid/preference/PreferenceScreen;

    .line 1838
    sget-boolean v29, Lcom/android/phone/PhoneApp;->FTR_31934_AUTO_LAUNCH_DIALPAD_ON:Z

    if-nez v29, :cond_24

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonShowDialPad:Landroid/preference/PreferenceScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1843
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonShowDialPad:Landroid/preference/PreferenceScreen;

    move-object/from16 v29, v0

    if-eqz v29, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f09002a

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    if-nez v29, :cond_25

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonShowDialPad:Landroid/preference/PreferenceScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1850
    :cond_25
    new-instance v29, Landroid/content/Intent;

    const-string v30, "com.motorola.blur.contacts.ACTION_GET_CONTENT"

    invoke-direct/range {v29 .. v30}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    .line 1851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v30, "vnd.android.cursor.item/phone_v2"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1858
    if-nez p1, :cond_26

    .line 1859
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 1860
    .local v15, mAction:Ljava/lang/String;
    if-eqz v15, :cond_26

    const-string v29, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    move-object v0, v15

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_26

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->size()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_42

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1870
    .end local v15           #mAction:Ljava/lang/String;
    :cond_26
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 1871
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 1872
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mIsSipSupported:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1

    .line 1873
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->createSipCallSettings()V

    goto/16 :goto_0

    .line 1500
    .end local v13           #is33861on:I
    .end local v14           #isFdnDisabled:Z
    .end local v17           #mButtonFDNPref:Landroid/preference/Preference;
    :cond_27
    const-string v29, "button_voicemail_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/EditPhoneNumberPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_4

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v30

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    move-object/from16 v29, v0

    const v30, 0x7f0b02fa

    invoke-virtual/range {v29 .. v30}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    goto/16 :goto_1

    .line 1531
    .restart local v6       #callerIdStatus:I
    .restart local v26       #txts:[Ljava/lang/String;
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "tts_caller_id_readout"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallerId:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallerId:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v30, v26, v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1538
    .end local v6           #callerIdStatus:I
    .end local v26           #txts:[Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallerId:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1539
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonCallerId:Landroid/preference/ListPreference;

    goto/16 :goto_3

    .line 1573
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonVQFluence:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1574
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonVQFluence:Landroid/preference/ListPreference;

    goto/16 :goto_4

    .line 1603
    .restart local v13       #is33861on:I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1604
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    goto/16 :goto_5

    .line 1627
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2e

    .line 1628
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "vm_vvm_selection"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 1629
    .local v23, selected:I
    sget-boolean v29, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v29, :cond_2d

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "mListPrefVMSelection getInt: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1630
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 1632
    .restart local v9       #entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    aget-object v30, v9, v23

    invoke-virtual/range {v29 .. v30}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1635
    .end local v9           #entries:[Ljava/lang/CharSequence;
    .end local v23           #selected:I
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    .line 1636
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "vm_vvm_roaming_selection"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 1637
    .restart local v23       #selected:I
    sget-boolean v29, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v29, :cond_2f

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "mListPrefVMRoamingSelection getInt: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1638
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 1640
    .restart local v9       #entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    aget-object v30, v9, v23

    invoke-virtual/range {v29 .. v30}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_6

    .line 1649
    .end local v9           #entries:[Ljava/lang/CharSequence;
    .end local v23           #selected:I
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1650
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto/16 :goto_7

    .line 1658
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1659
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_8

    .line 1674
    :cond_32
    sget-boolean v29, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v29, :cond_33

    const-string v29, "ftr_33076_ipcall is true"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1675
    :cond_33
    const-string v29, "ip_call_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    .line 1677
    invoke-static/range {p0 .. p0}, Lcom/android/phone/Utils;->checkIPPrefix(Landroid/content/Context;)V

    .line 1678
    const-string v29, "IP_PREFIX"

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 1679
    .restart local v25       #sharedData:Landroid/content/SharedPreferences;
    const-string v29, "ip_prefix"

    const-string v30, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1680
    .local v4, IPPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1681
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v29

    if-nez v29, :cond_35

    .line 1682
    invoke-static/range {p0 .. p0}, Lcom/android/phone/Utils;->getDefaultIPPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 1683
    .local v7, defaultIPPrefix:Ljava/lang/String;
    if-nez v7, :cond_34

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v29, v0

    const v30, 0x7f0b0464

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1691
    .end local v7           #defaultIPPrefix:Ljava/lang/String;
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_9

    .line 1686
    .restart local v7       #defaultIPPrefix:Ljava/lang/String;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v29, v0

    const v30, 0x7f0b0465

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v7, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 1689
    .end local v7           #defaultIPPrefix:Ljava/lang/String;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 1706
    .end local v4           #IPPrefix:Ljava/lang/String;
    .restart local v8       #defaultIntlRoamCBPrefix:Ljava/lang/String;
    .restart local v12       #introamcb_prefix:Ljava/lang/String;
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIntlRoamCBSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v29, v0

    const v30, 0x7f0b0473

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v8, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1709
    .end local v8           #defaultIntlRoamCBPrefix:Ljava/lang/String;
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIntlRoamCBSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1724
    .end local v12           #introamcb_prefix:Ljava/lang/String;
    .end local v25           #sharedData:Landroid/content/SharedPreferences;
    :cond_38
    const-string v29, "toggle_location"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mLocationPreference:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_b

    .line 1733
    .restart local v10       #hac:I
    :cond_39
    const/16 v30, 0x0

    goto/16 :goto_c

    .line 1737
    .end local v10           #hac:I
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1738
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_d

    .line 1762
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1763
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    goto/16 :goto_e

    .line 1795
    .restart local v17       #mButtonFDNPref:Landroid/preference/Preference;
    .restart local v20       #options:Landroid/preference/Preference;
    .restart local v21       #phoneType:I
    :cond_3c
    const/16 v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_3f

    .line 1796
    sget-boolean v29, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v29, :cond_3d

    const-string v29, "onCreate(): GSM phone, adding GSM/UMTS Call Options"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1797
    :cond_3d
    const v29, 0x7f05000d

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1799
    const-string v29, "button_cf_expand_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 1800
    .local v16, mBtnCfExpPref:Landroid/preference/Preference;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isConvertNumberFlexEnabled()Z

    move-result v29

    if-eqz v29, :cond_3e

    if-eqz v17, :cond_3e

    if-eqz v16, :cond_3e

    .line 1801
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1802
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1806
    :cond_3e
    const-string v29, "button_cf_expand_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCallForward:Landroid/preference/PreferenceScreen;

    goto/16 :goto_f

    .line 1809
    .end local v16           #mBtnCfExpPref:Landroid/preference/Preference;
    :cond_3f
    new-instance v29, Ljava/lang/IllegalStateException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unexpected phone type: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 1822
    .end local v20           #options:Landroid/preference/Preference;
    .end local v21           #phoneType:I
    :cond_40
    sget-boolean v29, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v29, :cond_41

    const-string v29, "ftr_16919_quicksms is true"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1823
    :cond_41
    const-string v29, "quicksms_preference"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonEditQuickSms:Landroid/preference/PreferenceScreen;

    .line 1825
    const-string v29, "qsms_enable_cb"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonEnableQuickSms:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_10

    .line 1865
    .restart local v14       #isFdnDisabled:Z
    .restart local v15       #mAction:Ljava/lang/String;
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    const-string v30, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_11
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "id"
    .parameter "args"

    .prologue
    const v10, 0x1040014

    const v9, 0x1040013

    const/16 v8, 0x259

    const/4 v7, 0x0

    const v6, 0x7f0b01fd

    .line 1285
    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 1286
    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_0

    const/16 v5, 0x190

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f5

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f6

    if-eq p1, v5, :cond_0

    const/16 v5, 0x258

    if-ne p1, v5, :cond_1

    .line 1290
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1293
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b01f6

    .line 1294
    .local v4, titleId:I
    sparse-switch p1, :sswitch_data_0

    .line 1325
    const v3, 0x7f0b01fa

    .line 1328
    .local v3, msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1332
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1333
    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1334
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1335
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1336
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1339
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    move-object v5, v1

    .line 1405
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :goto_1
    return-object v5

    .line 1296
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    .restart local v4       #titleId:I
    :sswitch_0
    const v3, 0x7f0b0208

    .line 1297
    .restart local v3       #msgId:I
    const v4, 0x7f0b01ce

    .line 1299
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1304
    .end local v3           #msgId:I
    :sswitch_1
    const v3, 0x7f0b020c

    .line 1305
    .restart local v3       #msgId:I
    const v4, 0x7f0b01ce

    .line 1307
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1310
    .end local v3           #msgId:I
    :sswitch_2
    const v3, 0x7f0b0209

    .line 1312
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1315
    .end local v3           #msgId:I
    :sswitch_3
    const v3, 0x7f0b020a

    .line 1317
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1320
    .end local v3           #msgId:I
    :sswitch_4
    const v3, 0x7f0b020b

    .line 1321
    .restart local v3       #msgId:I
    const v5, 0x7f0b037c

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1322
    const v5, 0x7f0b037d

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1342
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :cond_1
    if-eq p1, v8, :cond_2

    const/16 v5, 0x25a

    if-ne p1, v5, :cond_4

    .line 1343
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1344
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v5, 0x7f0b01f5

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1345
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1346
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1347
    if-ne p1, v8, :cond_3

    const v5, 0x7f0b01f8

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v5, v1

    .line 1350
    goto :goto_1

    .line 1347
    :cond_3
    const v5, 0x7f0b01f7

    goto :goto_2

    .line 1352
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x3e8

    if-ne p1, v5, :cond_5

    .line 1354
    new-instance v5, Lcom/android/phone/VoiceQualityPicker;

    invoke-direct {v5, p0}, Lcom/android/phone/VoiceQualityPicker;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 1357
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x7d0

    if-ne v5, p1, :cond_6

    .line 1358
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b046b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/CallFeaturesSetting$3;

    invoke-direct {v6, p0}, Lcom/android/phone/CallFeaturesSetting$3;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1368
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1369
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/phone/CallFeaturesSetting$4;

    invoke-direct {v5, p0}, Lcom/android/phone/CallFeaturesSetting$4;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v5, v1

    .line 1374
    goto/16 :goto_1

    .line 1376
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x7d1

    if-ne v5, p1, :cond_7

    .line 1377
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b046d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/CallFeaturesSetting$6;

    invoke-direct {v6, p0}, Lcom/android/phone/CallFeaturesSetting$6;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    new-instance v7, Lcom/android/phone/CallFeaturesSetting$5;

    invoke-direct {v7, p0}, Lcom/android/phone/CallFeaturesSetting$5;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1396
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1397
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/phone/CallFeaturesSetting$7;

    invoke-direct {v5, p0}, Lcom/android/phone/CallFeaturesSetting$7;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v5, v1

    .line 1401
    goto/16 :goto_1

    .line 1405
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1294
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_4
        0x258 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 4
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 792
    sget-boolean v2, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceClick: request preference click on dialog close: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 794
    :cond_0
    const/4 v2, -0x2

    if-ne p2, v2, :cond_2

    .line 806
    :cond_1
    :goto_0
    return-void

    .line 797
    :cond_2
    if-eqz p1, :cond_1

    .line 798
    move-object v0, p1

    .line 800
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_1

    .line 801
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleVMBtnClickRequest()V

    .line 802
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0b0381

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 803
    .local v1, summary:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 802
    .end local v1           #summary:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    move-object v1, v2

    goto :goto_1
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 814
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_1

    .line 817
    sget-boolean v1, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "updating default for voicemail dialog"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 818
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    move-object v1, v2

    .line 831
    :goto_0
    return-object v1

    .line 822
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, vmDisplay:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    .line 826
    goto :goto_0

    .line 830
    :cond_2
    sget-boolean v1, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "updating default for call forwarding dialogs"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 831
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b01cf

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 22
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 651
    sget-boolean v18, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v18, :cond_0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onPreferenceChange pref:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "obj: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 652
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v10

    .line 654
    .local v10, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "dtmf_tone_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move v2, v10

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 787
    .end local v10           #index:I
    :cond_1
    :goto_0
    const/16 v18, 0x1

    return v18

    .line 656
    .restart local p2
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 657
    invoke-direct/range {p0 .. p2}, Lcom/android/phone/CallFeaturesSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    .line 658
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 659
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 660
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 661
    .local v12, newProviderKey:Ljava/lang/String;
    sget-boolean v18, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v18, :cond_4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "VM provider changes to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 664
    :cond_4
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 666
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v13

    .line 674
    .local v13, newProviderSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    if-nez v13, :cond_6

    .line 675
    sget-boolean v18, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v18, :cond_5

    const-string v18, "Saved preferences not found - invoking config"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 676
    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto/16 :goto_0

    .line 680
    :cond_6
    sget-boolean v18, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v18, :cond_7

    const-string v18, "Saved preferences found - switching to them"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 681
    :cond_7
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto/16 :goto_0

    .line 685
    .end local v12           #newProviderKey:Ljava/lang/String;
    .end local v13           #newProviderSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswerPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswerPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 686
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 687
    .local v17, value:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswerPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v10

    .line 688
    .restart local v10       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswerPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 689
    .local v9, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mAutoAnswerPreference:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    aget-object v19, v9, v10

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 691
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "auto_answer_timeout"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 692
    :catch_0
    move-exception v18

    move-object/from16 v8, v18

    .line 693
    .local v8, e:Ljava/lang/NumberFormatException;
    const-string v18, "CallFeaturesSetting"

    const-string v19, "could not persist screen timeout setting"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 698
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .end local v9           #entries:[Ljava/lang/CharSequence;
    .end local v10           #index:I
    .end local v17           #value:I
    .restart local p2
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallerId:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 699
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 700
    .local v4, buttonValue:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f06000c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 702
    .local v16, txts:[Ljava/lang/String;
    if-ltz v4, :cond_a

    const/16 v18, 0x2

    move v0, v4

    move/from16 v1, v18

    if-gt v0, v1, :cond_a

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "tts_caller_id_readout"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallerId:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    aget-object v19, v16, v4

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 711
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "tts_caller_id_readout"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallerId:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 719
    .end local v4           #buttonValue:I
    .end local v16           #txts:[Ljava/lang/String;
    .restart local p2
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f090020

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 720
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 721
    .local v3, IPPrefix:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_d

    .line 722
    invoke-static/range {p0 .. p0}, Lcom/android/phone/Utils;->getDefaultIPPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 723
    .local v6, defaultIPPrefix:Ljava/lang/String;
    if-nez v6, :cond_c

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b0464

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 731
    .end local v6           #defaultIPPrefix:Ljava/lang/String;
    :goto_1
    const-string v18, "IP_PREFIX"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 732
    .local v15, sharedData:Landroid/content/SharedPreferences$Editor;
    const-string v18, "ip_prefix"

    move-object v0, v15

    move-object/from16 v1, v18

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 733
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 726
    .end local v15           #sharedData:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #defaultIPPrefix:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b0465

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v6, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 729
    .end local v6           #defaultIPPrefix:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 737
    .end local v3           #IPPrefix:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIntlRoamCBSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIntlRoamCBSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 738
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 739
    .local v11, intlRoamCBPrefix:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_10

    .line 740
    invoke-static/range {p0 .. p0}, Lcom/android/phone/Utils;->getIntRoamCallBackPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 741
    .local v7, defaultintlRoamCBPrefix:Ljava/lang/String;
    if-nez v7, :cond_f

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIntlRoamCBSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b0472

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 749
    .end local v7           #defaultintlRoamCBPrefix:Ljava/lang/String;
    :goto_2
    const-string v18, "INTROAMCB_PREFIX"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 750
    .restart local v15       #sharedData:Landroid/content/SharedPreferences$Editor;
    const-string v18, "introamcb_prefix"

    move-object v0, v15

    move-object/from16 v1, v18

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 751
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 744
    .end local v15           #sharedData:Landroid/content/SharedPreferences$Editor;
    .restart local v7       #defaultintlRoamCBPrefix:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIntlRoamCBSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b0473

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v7, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 747
    .end local v7           #defaultintlRoamCBPrefix:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonIntlRoamCBSettings:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 755
    .end local v11           #intlRoamCBPrefix:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v10

    .line 758
    .restart local v10       #index:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "vm_vvm_selection"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move v2, v10

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v14

    .line 759
    .local v14, rtn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 760
    .restart local v9       #entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    aget-object v19, v9, v10

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 761
    sget-boolean v18, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v18, :cond_1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mListPrefVMSelection putInt: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " with rtn: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 763
    .end local v9           #entries:[Ljava/lang/CharSequence;
    .end local v10           #index:I
    .end local v14           #rtn:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v10

    .line 766
    .restart local v10       #index:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "vm_vvm_roaming_selection"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move v2, v10

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v14

    .line 767
    .restart local v14       #rtn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 768
    .restart local v9       #entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    aget-object v19, v9, v10

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 769
    sget-boolean v18, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v18, :cond_1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mListPrefVMRoamingSelection putInt: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " with rtn: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 772
    .end local v9           #entries:[Ljava/lang/CharSequence;
    .end local v10           #index:I
    .end local v14           #rtn:Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 773
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 776
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonVQFluence:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 777
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 778
    .restart local v4       #buttonValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonVQFluence:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 779
    .local v5, currentValue:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_1

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonVQFluence:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v4

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->setFluence(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v11, 0x7f090018

    const v8, 0x7f090021

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v12, "location_service_on"

    .line 488
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v6, :cond_0

    move v6, v9

    .line 639
    :goto_0
    return v6

    .line 490
    :cond_0
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p2, v6, :cond_1

    move v6, v9

    .line 491
    goto :goto_0

    .line 493
    :cond_1
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p2, v6, :cond_2

    move v6, v9

    .line 494
    goto :goto_0

    .line 496
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_4

    .line 497
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "call_auto_retry"

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_1
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v6, v9

    .line 500
    goto :goto_0

    :cond_3
    move v8, v10

    .line 497
    goto :goto_1

    .line 501
    :cond_4
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_7

    .line 502
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    move v2, v9

    .line 504
    .local v2, hac:I
    :goto_2
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hearing_aid"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 508
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "HACSetting"

    if-eqz v2, :cond_6

    const-string v8, "ON"

    :goto_3
    invoke-virtual {v6, v7, v8}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v9

    .line 509
    goto :goto_0

    .end local v2           #hac:I
    :cond_5
    move v2, v10

    .line 502
    goto :goto_2

    .line 508
    .restart local v2       #hac:I
    :cond_6
    const-string v8, "OFF"

    goto :goto_3

    .line 510
    .end local v2           #hac:I
    :cond_7
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v6, :cond_b

    .line 511
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 512
    sget-boolean v6, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invoking cfg intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 513
    :cond_8
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/CallFeaturesSetting;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_4
    move v6, v9

    .line 519
    goto/16 :goto_0

    .line 515
    :cond_9
    sget-boolean v6, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v6, :cond_a

    const-string v6, "Opening VM number cfg dialog"

    invoke-static {v6}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 516
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 517
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v6}, Lcom/android/phone/EditPhoneNumberPreference;->showPhoneNumberDialog()V

    goto :goto_4

    .line 520
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09000f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonVoiceQuality:Landroid/preference/Preference;

    if-ne p2, v6, :cond_c

    .line 521
    const/16 v6, 0x3e8

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    move v6, v9

    .line 522
    goto/16 :goto_0

    .line 525
    :cond_c
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCarrierSelKey:Landroid/preference/PreferenceScreen;

    if-ne p2, v6, :cond_d

    iget-boolean v6, p0, Lcom/android/phone/CallFeaturesSetting;->mIsNetworkSettingENS:Z

    if-eqz v6, :cond_d

    .line 527
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/android/phone/NetworkSettingENS;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 528
    .local v3, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 529
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    move v6, v9

    .line 531
    goto/16 :goto_0

    .line 537
    .end local v3           #intent:Landroid/content/Intent;
    :cond_d
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallerId:Landroid/preference/ListPreference;

    if-ne p2, v6, :cond_e

    move v6, v9

    .line 538
    goto/16 :goto_0

    .line 541
    :cond_e
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonIntlRoamCBSettings:Landroid/preference/EditTextPreference;

    if-ne p2, v6, :cond_f

    move v6, v9

    .line 542
    goto/16 :goto_0

    .line 546
    :cond_f
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090020

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonIPCallSettings:Landroid/preference/EditTextPreference;

    if-ne p2, v6, :cond_10

    move v6, v9

    .line 547
    goto/16 :goto_0

    .line 550
    :cond_10
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mLocationPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_13

    .line 551
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "location_service_on"

    invoke-static {v6, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 553
    .local v5, savedLocationMode:I
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_12

    move v0, v9

    .line 554
    .local v0, currentLocationMode:I
    :goto_5
    if-eq v0, v5, :cond_11

    .line 555
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "location_service_on"

    invoke-static {v6, v12, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_11
    move v6, v9

    .line 558
    goto/16 :goto_0

    .end local v0           #currentLocationMode:I
    :cond_12
    move v0, v10

    .line 553
    goto :goto_5

    .line 560
    .end local v5           #savedLocationMode:I
    :cond_13
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mUpdateLocationPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_16

    .line 561
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mUpdateLocationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 562
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->ExistUpdatedLocationPackage(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 563
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "use_updated_location_service"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_6
    move v6, v9

    .line 574
    goto/16 :goto_0

    .line 568
    :cond_14
    const/16 v6, 0x7d0

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    goto :goto_6

    .line 571
    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "use_updated_location_service"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 576
    :cond_16
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDownloadLocationPreference:Landroid/preference/Preference;

    if-ne p2, v6, :cond_17

    .line 577
    const/16 v6, 0x7d1

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    move v6, v9

    .line 578
    goto/16 :goto_0

    .line 582
    :cond_17
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonVQFluence:Landroid/preference/ListPreference;

    if-ne p2, v6, :cond_18

    move v6, v9

    .line 583
    goto/16 :goto_0

    .line 587
    :cond_18
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonShowDialPad:Landroid/preference/PreferenceScreen;

    if-ne p2, v6, :cond_19

    .line 588
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 589
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v6, Lcom/android/phone/DialPadSettingPrefScreen;

    invoke-virtual {v3, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 590
    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    move v6, v9

    .line 591
    goto/16 :goto_0

    .line 595
    .end local v3           #intent:Landroid/content/Intent;
    :cond_19
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAssistedDialing:Landroid/preference/Preference;

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAssistedDialing:Landroid/preference/Preference;

    if-ne p2, v6, :cond_1a

    .line 596
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 597
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v6, Lcom/android/phone/AssistedDialingSetting;

    invoke-virtual {v3, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 598
    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    move v6, v9

    .line 599
    goto/16 :goto_0

    .line 603
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1a
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonEditQuickSms:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonEditQuickSms:Landroid/preference/PreferenceScreen;

    if-ne p2, v6, :cond_1c

    .line 605
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 606
    .local v4, quickSmsIntent:Landroid/content/Intent;
    const-string v6, "com.motorola.quicksms"

    const-string v7, "com.motorola.quicksms.QuickSmsManageMessages"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    sget-boolean v6, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v6, :cond_1b

    const-string v6, "ftr_16919_quicksms is true, start quicksms activity"

    invoke-static {v6}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 608
    :cond_1b
    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #quickSmsIntent:Landroid/content/Intent;
    :goto_7
    move v6, v9

    .line 613
    goto/16 :goto_0

    .line 609
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 611
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "CallFeaturesSetting"

    const-string v7, "QuickSms activity Not Found!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 617
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_1c
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonEnableQuickSms:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonEnableQuickSms:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_1e

    .line 618
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "qsms_enable_text_message_reply"

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonEnableQuickSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1d

    move v8, v9

    :goto_8
    invoke-static {v6, v7, v8}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v6, v9

    .line 621
    goto/16 :goto_0

    :cond_1d
    move v8, v10

    .line 618
    goto :goto_8

    .line 625
    :cond_1e
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    if-ne p2, v6, :cond_1f

    move v6, v9

    .line 626
    goto/16 :goto_0

    .line 628
    :cond_1f
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    if-ne p2, v6, :cond_20

    move v6, v9

    .line 629
    goto/16 :goto_0

    .line 634
    :cond_20
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mCallForward:Landroid/preference/PreferenceScreen;

    if-ne p2, v6, :cond_21

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 635
    const v6, 0x7f0b03f6

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move v6, v9

    .line 636
    goto/16 :goto_0

    :cond_21
    move v6, v10

    .line 639
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 19

    .prologue
    .line 1912
    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1913
    sget-boolean v16, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v16, :cond_0

    const-string v16, "onResume()..."

    invoke-static/range {v16 .. v16}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1915
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->isAirplaneModeOn()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1916
    const-string v16, "sip_settings_category_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 1917
    .local v14, sipSettings:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 1918
    .local v11, screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .line 1919
    .local v4, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v4, :cond_c

    .line 1920
    invoke-virtual {v11, v8}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    .line 1921
    .local v10, pref:Landroid/preference/Preference;
    if-eq v10, v14, :cond_1

    const/16 v16, 0x0

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1919
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1926
    .end local v4           #count:I
    .end local v8           #i:I
    .end local v10           #pref:Landroid/preference/Preference;
    .end local v11           #screen:Landroid/preference/PreferenceScreen;
    .end local v14           #sipSettings:Landroid/preference/Preference;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 1927
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "dtmf_tone_type"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1929
    .local v5, dtmf:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1932
    .end local v5           #dtmf:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 1933
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "call_auto_retry"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1935
    .local v2, autoretry:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    if-eqz v2, :cond_d

    const/16 v17, 0x1

    :goto_1
    invoke-virtual/range {v16 .. v17}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1938
    .end local v2           #autoretry:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 1939
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "hearing_aid"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1940
    .local v7, hac:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    if-eqz v7, :cond_e

    const/16 v17, 0x1

    :goto_2
    invoke-virtual/range {v16 .. v17}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1942
    .end local v7           #hac:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    .line 1945
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "preferred_tty_mode"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 1948
    .local v13, settingsTtyMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->ttyHandler:Lcom/android/phone/CallFeaturesSetting$TTYHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v13

    #calls: Lcom/android/phone/CallFeaturesSetting$TTYHandler;->updatePreferredTtyModeSummary(I)V
    invoke-static {v0, v1}, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->access$700(Lcom/android/phone/CallFeaturesSetting$TTYHandler;I)V

    .line 1954
    .end local v13           #settingsTtyMode:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090021

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1955
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "location_service_on"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    if-eqz v16, :cond_f

    const/16 v16, 0x1

    move/from16 v9, v16

    .line 1956
    .local v9, locationModeEnabled:Z
    :goto_3
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mLocationModeEnabled = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mLocationPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1958
    const-string v16, "update_location_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mUpdateLocationPreference:Landroid/preference/CheckBoxPreference;

    .line 1960
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "use_updated_location_service"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    if-eqz v16, :cond_10

    const/16 v16, 0x1

    move/from16 v15, v16

    .line 1962
    .local v15, updateLocationServiceEnabled:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mUpdateLocationPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1964
    const-string v16, "download_location_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mDownloadLocationPreference:Landroid/preference/Preference;

    .line 1969
    .end local v9           #locationModeEnabled:Z
    .end local v15           #updateLocationServiceEnabled:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    .line 1970
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "vm_vvm_selection"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 1971
    .local v12, selected:I
    sget-boolean v16, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v16, :cond_8

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "OnResume - setValue of VM Selection: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1972
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1974
    .local v6, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMSelection:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    aget-object v17, v6, v12

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1976
    .end local v6           #entries:[Ljava/lang/CharSequence;
    .end local v12           #selected:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    .line 1977
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "vm_vvm_roaming_selection"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 1978
    .restart local v12       #selected:I
    sget-boolean v16, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v16, :cond_a

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "OnResume - setValue of Roaming VM Selection: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1979
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1981
    .restart local v6       #entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mListPrefVMRoamingSelection:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    aget-object v17, v6, v12

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1985
    .end local v6           #entries:[Ljava/lang/CharSequence;
    .end local v12           #selected:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonEnableQuickSms:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    .line 1986
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "qsms_enable_text_message_reply"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1987
    .local v3, checked:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonEnableQuickSms:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    if-eqz v3, :cond_11

    const/16 v17, 0x1

    :goto_5
    invoke-virtual/range {v16 .. v17}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1990
    .end local v3           #checked:I
    :cond_c
    return-void

    .line 1935
    .restart local v2       #autoretry:I
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1940
    .end local v2           #autoretry:I
    .restart local v7       #hac:I
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1955
    .end local v7           #hac:I
    :cond_f
    const/16 v16, 0x0

    move/from16 v9, v16

    goto/16 :goto_3

    .line 1960
    .restart local v9       #locationModeEnabled:Z
    :cond_10
    const/16 v16, 0x0

    move/from16 v15, v16

    goto/16 :goto_4

    .line 1987
    .end local v9           #locationModeEnabled:Z
    .restart local v3       #checked:I
    :cond_11
    const/16 v17, 0x0

    goto :goto_5
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 838
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 840
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_0
    sget-boolean v0, Lcom/android/phone/CallFeaturesSetting;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "startSubActivity: starting requested subactivity"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 845
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
