.class public final Lcom/motorola/android/provider/MotorolaSettings;
.super Ljava/lang/Object;
.source "MotorolaSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;,
        Lcom/motorola/android/provider/MotorolaSettings$NameValueTable;,
        Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
    }
.end annotation


# static fields
.field public static final ACTIVESYNC_POLICY_ALPHANUMERIC_REQUIRED:Ljava/lang/String; = "activesync_policy_alphanumeric_required"

.field public static final ACTIVESYNC_POLICY_ENABLED:Ljava/lang/String; = "activesync_policy_enabled"

.field public static final ACTIVESYNC_POLICY_LOCK_PIN_MIN_CHARS:Ljava/lang/String; = "activesync_policy_lock_pin_min_chars"

.field public static final ACTIVESYNC_POLICY_MIN_COMPLEX_CHARS:Ljava/lang/String; = "activesync_policy_min_complex_chars"

.field public static final ACTIVESYNC_POLICY_PIN_TYPE:Ljava/lang/String; = "activesync_policy_lock_type"

.field public static final ACTIVESYNC_POLICY_UNLOCK_MAX_ATTEMPTS:Ljava/lang/String; = "activesync_policy_unlock_max_attempts"

.field public static final AGPS_FEATURE_ENABLED:Ljava/lang/String; = "agps_feature_enabled"

.field public static final ALL_AUTO_DIALPAD_ENABLED:Ljava/lang/String; = "all_auto_diapad_enabled"

.field public static final APN_CONTROL_ON_OFF:Ljava/lang/String; = "apn_control_on_off"

.field public static final ASSISTED_DIALING_STATE:Ljava/lang/String; = "assisted_dialing_state"

.field public static final AUTHORITY:Ljava/lang/String; = "com.motorola.android.providers.settings"

.field public static final AUTO_DIAPAD_CUSTOM_PHONE_NUMBER:Ljava/lang/String; = "auto_diapad_custom_phone_number"

.field public static final AUTO_SYSTEM_CHECK_ENABLED:Ljava/lang/String; = "auto_system_check"

.field public static final BACK_GROUND_DATA_BACKUP_BY_DATAMANAGER:Ljava/lang/String; = "back_ground_data_backup_by_datamanager"

.field public static final BT_Dun_Enabled:Ljava/lang/String; = "Bluetooth_Dun_Enabled"

.field public static final BT_MFB_ENABLED_WHEN_LOCKED:Ljava/lang/String; = "bluetooth_mfb_enabled_when_locked"

.field public static final CALLING_33860_ENABLED:Ljava/lang/String; = "calling_33860_enabled"

.field public static final CALLING_GLOBAL_CONTROLS_ENABLE:Ljava/lang/String; = "calling_global_controls_enable"

.field public static final CALLING_GSM_AD_ENABLED:Ljava/lang/String; = "calling_gsm_ad_enabled"

.field public static final CALL_AUTO_ANSWER:Ljava/lang/String; = "call_auto_answer"

.field public static final CALL_CONNECT_TONE:Ljava/lang/String; = "call_connect_tone"

.field public static final CONTACT_PROTECTION_ENABLED:Ljava/lang/String; = "contact_protection"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field public static final CUR_COUNTRY_AREA_CODE:Ljava/lang/String; = "cur_country_area_code"

.field public static final CUR_COUNTRY_CODE:Ljava/lang/String; = "cur_country_code"

.field public static final CUR_COUNTRY_IDD:Ljava/lang/String; = "cur_country_idd"

.field public static final CUR_COUNTRY_MCC:Ljava/lang/String; = "cur_country_mcc"

.field public static final CUR_COUNTRY_MDN_LEN:Ljava/lang/String; = "cur_country_mdn_len"

.field public static final CUR_COUNTRY_NAME:Ljava/lang/String; = "cur_country_name"

.field public static final CUR_COUNTRY_NDD:Ljava/lang/String; = "cur_country_ndd"

.field public static final CUR_COUNTRY_UPDATED_BY_USER:Ljava/lang/String; = "cur_country_updated_by_user"

.field public static final CUSTOM_AUTO_DIALPAD_ENABLED:Ljava/lang/String; = "custom_auto_diapad_enabled"

.field public static final DATA_NETWORK_SETTING_ENABLED:Ljava/lang/String; = "data_network_setting_enabled"

.field private static final DEBUG:Z = false

.field public static final DEVICE_KEYBOARD_FEATURE_ENABLED:Ljava/lang/String; = "device_keyboard_feature_enabled"

.field public static final DIALUP_MODEM_RESTRICTION:Ljava/lang/String; = "dialup_modem_restriction"

.field public static final DISPLAY_ROAMING_ICON:Ljava/lang/String; = "roaming_icon"

.field public static final DOUBLE_TAP:Ljava/lang/String; = "double_tap"

.field public static final DOWNLOAD_WALLPAPER:Ljava/lang/String; = "enable_download_wallpaper"

.field public static final EMAIL_CHECK_FREQUENCE_INTERVAL_ATT:Ljava/lang/String; = "email_check_frequence_interval_att"

.field public static final ENABLE_MMS_WHEN_DATA_DISABLED:Ljava/lang/String; = "enable_mms_when_data_disabled"

.field public static final ENABLE_TEXT_MSG_REPLY:Ljava/lang/String; = "qsms_enable_text_message_reply"

.field public static final ENTITLEMENT_CHECK:Ljava/lang/String; = "entitlement_check"

.field public static final ERI_ALERT_SOUNDS:Ljava/lang/String; = "eri_alert_sounds"

.field public static final ERI_TEXT_BANNER:Ljava/lang/String; = "eri_text_banner"

.field public static final FEATURE_34568_ENABLE:Ljava/lang/String; = "ftr_34568_enable"

.field public static final FID_33463_ENABLED:Ljava/lang/String; = "fid_33463_enabled"

.field public static final FID_34387_MULTIMODE:Ljava/lang/String; = "fid_34387_multimode"

.field public static final FTR_FULL_CHARGE_NOTIFICATION_ENABLE:Ljava/lang/String; = "ftr_full_charge_notification_enable"

.field public static final FULL_CHARGE_NOTIFICATION_ENABLE:Ljava/lang/String; = "full_charge_notification_enable"

.field public static final HOTSPOT_IDLE_TIMEOUT:Ljava/lang/String; = "hotspot_idle_timeout"

.field public static final ICE_CONTACTS_ENABLED:Ljava/lang/String; = "ice_contacts_enabled"

.field public static final INCOMING_CALL_RESTRICTION:Ljava/lang/String; = "incoming_call_restriction"

.field public static final INCOMING_MESSAGE_RESTRICTION:Ljava/lang/String; = "incoming_message_restriction"

.field public static final IN_POCKET_DETECTION:Ljava/lang/String; = "in_pocket_detection"

.field public static final IS_TALKBACK_ON:Ljava/lang/String; = "is_talkback_on"

.field public static final KEYBOARD_LAYOUT_EXTERNAL:Ljava/lang/String; = "keyboard_layout_external"

.field public static final KEYGUARD_NEED_FACTORY_RESET_AFTER_POWER_UP:Ljava/lang/String; = "keyguard_need_factory_reset_after_power_up"

.field public static final LOCATION_RESTRICTION:Ljava/lang/String; = "location_restriction"

.field public static final LOCK_FINGERPRINT:Ljava/lang/String; = "lock_fingerprint"

.field public static final LOCK_PIN_CURRENT_FAILED_ATTEMPTS:Ljava/lang/String; = "lock_pin_current_failed_attempts"

.field public static final LOCK_PIN_MAX_ATTEMPTS:Ljava/lang/String; = "lock_pin_max_attempts"

.field public static final LOCK_PIN_MIN_CHARS:Ljava/lang/String; = "lock_pin_min_chars"

.field public static final LOCK_PIN_SETUP:Ljava/lang/String; = "lock_pin_setup"

.field public static final LOCK_TIMER:Ljava/lang/String; = "lock_timer"

.field public static final LOCK_TIMER_MAX:Ljava/lang/String; = "lock_timer_max"

.field public static final LOCK_TYPE:Ljava/lang/String; = "lock_type"

.field public static final MMS_ACCEPT_CHARSET:Ljava/lang/String; = "mms_accept_charset"

.field public static final MMS_AUTO_RETRY_ATTEMPTS:Ljava/lang/String; = "mms_auto_retry_attempts"

.field public static final MMS_AUTO_RETRY_INTERVAL:Ljava/lang/String; = "mms_auto_retry_interval"

.field public static final MMS_COUNTRY_CODE:Ljava/lang/String; = "mms_country_code"

.field public static final MMS_HTTP_LINE1KEY:Ljava/lang/String; = "mms_http_line1key"

.field public static final MMS_HTTP_PARAMETERS:Ljava/lang/String; = "mms_http_parameters"

.field public static final MMS_MANUAL_RETRY_ENABLE:Ljava/lang/String; = "mms_manual_retry_enable"

.field public static final MMS_MAXIMUM_MESSAGE_SIZE:Ljava/lang/String; = "mms_maximum_message_size"

.field public static final MMS_MAX_IMAGE_HEIGHT:Ljava/lang/String; = "mms_max_image_height"

.field public static final MMS_MAX_IMAGE_WIDTH:Ljava/lang/String; = "mms_max_image_width"

.field public static final MMS_MML_SERVER:Ljava/lang/String; = "mms_mml_server"

.field public static final MMS_NOTIFY_WAP_MMSC_ENABLE:Ljava/lang/String; = "mms_notify_wap_mmsc_enable"

.field public static final MMS_NUMBER_PLUS_PREFIX_ENABLED:Ljava/lang/String; = "mms_number_plus_prefix_enabled"

.field public static final MMS_ONLINE_ALBUM:Ljava/lang/String; = "mms_online_album"

.field public static final MMS_ON_REPLY_ALL:Ljava/lang/String; = "mms_on_reply_all"

.field public static final MMS_REPLY_ALL_ENABLE:Ljava/lang/String; = "mms_reply_all_enable"

.field public static final MMS_SECONDARY_MMSC_SUPPORT:Ljava/lang/String; = "mms_secondary_mmsc_support"

.field public static final MMS_TRANSID_ENABLE:Ljava/lang/String; = "mms_transid_enable"

.field public static final MMS_UAPROF_TAGNAME:Ljava/lang/String; = "mms_uaprof_tagname"

.field public static final MMS_USER_AGENT:Ljava/lang/String; = "mms_user_agent"

.field public static final MMS_WAP_REJECT_ENABLE:Ljava/lang/String; = "mms_wap_reject_enable"

.field public static final MMS_X_WAP_PROFILE_URL:Ljava/lang/String; = "mms_x_wap_profile_url"

.field public static final NEED_LOCK_DEFAULT_APN:Ljava/lang/String; = "need_lock_default_apn"

.field public static final NETWORK_LOST_TONE:Ljava/lang/String; = "network_lost_tone"

.field public static final NEXT_ALARM_UTC:Ljava/lang/String; = "next_alarm_utc"

.field public static final NOTIFICATION_LED_ENABLED:Ljava/lang/String; = "notification_led_enabled"

.field public static final NOTIFICATION_LED_MISSEDCALL_ENABLED:Ljava/lang/String; = "notification_led_missedcall_enabled"

.field public static final NOTIFICATION_LED_VOICEMAIL_ENABLED:Ljava/lang/String; = "notification_led_voicemail_enabled"

.field public static final OUTGOING_CALL_RESTRICTION:Ljava/lang/String; = "outgoing_call_restriction"

.field public static final OUTGOING_MESSAGE_RESTRICTION:Ljava/lang/String; = "outgoing_message_restriction"

.field public static final PGM_CARRIER_STRING:Ljava/lang/String; = "pgm_carrier_string"

.field public static final POINTER_SPEED_LEVEL:Ljava/lang/String; = "pointer_speed_level"

.field public static final POWERUP_TONE_ENABLE:Ljava/lang/String; = "powerup_tone_enable"

.field public static final REF_COUNTRY_AREA_CODE:Ljava/lang/String; = "ref_country_area_code"

.field public static final REF_COUNTRY_CODE:Ljava/lang/String; = "ref_country_code"

.field public static final REF_COUNTRY_IDD:Ljava/lang/String; = "ref_country_idd"

.field public static final REF_COUNTRY_MCC:Ljava/lang/String; = "ref_country_mcc"

.field public static final REF_COUNTRY_MDN_LEN:Ljava/lang/String; = "ref_country_mdn_len"

.field public static final REF_COUNTRY_NAME:Ljava/lang/String; = "ref_country_name"

.field public static final REF_COUNTRY_NDD:Ljava/lang/String; = "ref_country_ndd"

.field public static final REF_COUNTRY_UPDATED_BY_USER:Ljava/lang/String; = "ref_country_updated_by_user"

.field public static final RESTRICTION_LOCK:Ljava/lang/String; = "restriction_lock"

.field public static final RINGTONE_NETWORK_HOME:Ljava/lang/String; = "ringtone_network_home"

.field public static final RINGTONE_NETWORK_ROAMING:Ljava/lang/String; = "ringtone_network_roaming"

.field public static final SCREEN_LOCK_ENABLED:Ljava/lang/String; = "screen_lock"

.field public static final SCREEN_OFF_TIMEOUT_MAX:Ljava/lang/String; = "screen_off_timeout_max"

.field public static final SETTING_DEBLUR_34412:Ljava/lang/String; = "settings_deblur_enable"

.field public static final SETTING_FTR_33859_ENABLED:Ljava/lang/String; = "sim_33859_isenabled"

.field public static final SETTING_FTR_BUA_ENABLED:Ljava/lang/String; = "bua_isenabled"

.field public static final SETTING_FTR_CONTACT_ADDMENU_ICON:Ljava/lang/String; = "contact_additional_menu_icon"

.field public static final SETTING_FTR_CONTACT_ADDMENU_INTENET:Ljava/lang/String; = "contact_additional_menu_intent"

.field public static final SETTING_FTR_CONTACT_ADDMENU_INTENT_TYPE:Ljava/lang/String; = "contact_additional_menu_intent_type"

.field public static final SETTING_FTR_CONTACT_ADDMENU_ORDER:Ljava/lang/String; = "contact_additional_menu_order"

.field public static final SETTING_FTR_CONTACT_ADDMENU_RES_PACKAGE:Ljava/lang/String; = "contact_additional_menu_res_package"

.field public static final SETTING_FTR_CONTACT_ADDMENU_TITLE:Ljava/lang/String; = "contact_additional_menu_title"

.field public static final SETTING_FTR_DEBLUR_CONTACT:Ljava/lang/String; = "deblur_isenabled"

.field public static final SETTING_FTR_DEFAULT_CONTACT_ACCOUNT_NAME:Ljava/lang/String; = "default_contact_account_name"

.field public static final SETTING_FTR_DEFAULT_CONTACT_ACCOUNT_TYPE:Ljava/lang/String; = "default_contact_account_type"

.field public static final SETTING_FTR_DISPLAY_SIM_ID_ENABLE:Ljava/lang/String; = "settings_display_sim_id_enable"

.field public static final SETTING_FTR_DUN_NAT_ENABLED:Ljava/lang/String; = "dun_nat_enabled"

.field public static final SETTING_FTR_ICE_ENABLED:Ljava/lang/String; = "ice_isenabled"

.field public static final SETTING_FTR_MULTIPLEPDP_ENABLED:Ljava/lang/String; = "multiple_pdp_isenabled"

.field public static final SETTING_FTR_PRELOAD_CONTACTS:Ljava/lang/String; = "preload_carrier"

.field public static final SETTING_FTR_RINGER_SWITCH_ENABLE:Ljava/lang/String; = "ftr_ringer_switch_enable"

.field public static final SETTING_FTR_SIM_NETWORK_LOCK_ENABLE:Ljava/lang/String; = "settings_sim_network_lock_enable"

.field public static final SETTING_FTR_SIP_ADDRESS_ENABLED:Ljava/lang/String; = "sip_address_enabled"

.field public static final SMS_CHARS_REMAIN_TIL_COUNTER:Ljava/lang/String; = "sms_chars_remaining_before_counter_shown"

.field public static final SMS_FORCE_7BIT_ENCODING:Ljava/lang/String; = "sms_force_7bit_encoding"

.field public static final SMS_MMS_CALLBACK_NUM_ENABLE:Ljava/lang/String; = "sms_mms_callback_number_enable"

.field public static final SMS_MMS_DELIVERY_REPORT_ENABLE:Ljava/lang/String; = "sms_mms_delivery_report_enable"

.field public static final SMS_MMS_ENABLE_ALIAS:Ljava/lang/String; = "sms_mms_enable_alias"

.field public static final SMS_MMS_ERROR_CODES_ENABLE:Ljava/lang/String; = "sms_mms_error_codes_enable"

.field public static final SMS_MMS_MAX_NUM_RECIPIENTS:Ljava/lang/String; = "sms_mms_max_num_recipients"

.field public static final SMS_MMS_MAX_NUM_RECIPIENTS_AVAILABILITY:Ljava/lang/String; = "sms_mms_max_num_recipients_availability"

.field public static final SMS_MMS_MO_MEMORY_LOW_ENABLE:Ljava/lang/String; = "sms_mms_mo_memory_low_enable"

.field public static final SMS_MMS_MSG_DETAILS_ENABLE:Ljava/lang/String; = "sms_mms_message_details_enable"

.field public static final SMS_MMS_MT_MEMORY_LOW_ENABLE:Ljava/lang/String; = "sms_mms_mt_memory_low_enable"

.field public static final SMS_MMS_SIGNATURE_ENABLE:Ljava/lang/String; = "sms_mms_signature_enable"

.field public static final SMS_MMS_THRESHOLD:Ljava/lang/String; = "sms_mms_threshold"

.field public static final SMS_OUTGOING_CHECK_INTERVAL_MS:Ljava/lang/String; = "sms_outgoing_check_interval_ms"

.field public static final SMS_OUTGOING_CHECK_MAX_COUNT:Ljava/lang/String; = "sms_outgoing_check_max_count"

.field public static final SMS_PREF_KEY_EMAIL_GATEWAY_NUM:Ljava/lang/String; = "sms_pref_key_emailgateway_num"

.field public static final SMS_PREF_KEY_TO_EMAIL:Ljava/lang/String; = "sms_pref_key_to_email"

.field public static final SMS_PRIORITY_ENABLE:Ljava/lang/String; = "sms_priority_enable"

.field public static final SMS_TO_MMS_AUTO_CONVERT:Ljava/lang/String; = "sms_to_mms_auto_convert"

.field public static final SMS_TO_MMS_CONVERT_ENABLED:Ljava/lang/String; = "sms_to_mms_convert_enabled"

.field public static final SOFTWARE_UPDATE_ALERT_ENABLED:Ljava/lang/String; = "software_update_alert"

.field public static final SYSTEM_CARRIER_PROPERTY:Ljava/lang/String; = "persist.ril.carrier.numeric"

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.mot_settings_secure_version"

.field private static final TAG:Ljava/lang/String; = "MotrolaSettings"

.field public static final TTS_CALLER_ID_READOUT:Ljava/lang/String; = "tts_caller_id_readout"

.field public static final USER_NEED_ACCEPT_MOTO_AGREEMENT:Ljava/lang/String; = "user_need_accept_moto_agreement"

.field public static final VIEWSERVER_IN_SECUREBUILD_ENABLED:Ljava/lang/String; = "viewserver_in_securebuild_enabled"

.field public static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_cdma"

.field public static final VM_TF_PP_AUTO_DIALPAD_ENABLED:Ljava/lang/String; = "vm_tf_auto_dialpad_enabled"

.field public static final VM_VVM_ROAMING_SELECTION:Ljava/lang/String; = "vm_vvm_roaming_selection"

.field public static final VM_VVM_SELECTION:Ljava/lang/String; = "vm_vvm_selection"

.field public static final VOLUME_MONITOR_INTERVAL:Ljava/lang/String; = "volume_monitor_interval"

.field public static final VOLUME_THRESHOLD_PERCENTAGE:Ljava/lang/String; = "volume_threshold_precentage"

.field public static final WIFI_ADHOC_CHANNEL_NUMBER:Ljava/lang/String; = "wifi_adhoc_channel_number"

.field public static final WIFI_AP_DHCP_END_ADDR:Ljava/lang/String; = "wifi_ap_dhcp_end_addr"

.field public static final WIFI_AP_DHCP_START_ADDR:Ljava/lang/String; = "wifi_ap_dhcp_start_addr"

.field public static final WIFI_AP_DNS1:Ljava/lang/String; = "wifi_ap_dns1"

.field public static final WIFI_AP_DNS2:Ljava/lang/String; = "wifi_ap_dns2"

.field public static final WIFI_AP_FREQUENCY:Ljava/lang/String; = "wifi_ap_frequency"

.field public static final WIFI_AP_GATEWAY:Ljava/lang/String; = "wifi_ap_gateway"

.field public static final WIFI_AP_HIDDEN:Ljava/lang/String; = "wifi_ap_hidden"

.field public static final WIFI_AP_MAX_SCB:Ljava/lang/String; = "wifi_ap_max_scb"

.field public static final WIFI_AP_NETMASK:Ljava/lang/String; = "wifi_ap_netmask"

.field public static final WIFI_DISABLED_BY_ECM:Ljava/lang/String; = "wifi_disabled_by_ecm"

.field public static final WIFI_HOTSPOT_AUTOCONNECT_ON:Ljava/lang/String; = "wifi_hotspot_autoconnect"

.field public static final WIFI_HOTSPOT_MASK_SSID:Ljava/lang/String; = "wifi_hotspot_mask_ssid"

.field public static final WIFI_HOTSPOT_NOTIFY_ON:Ljava/lang/String; = "wifi_hotspot_notify"

.field public static final WIFI_HOTSPOT_SSID_1:Ljava/lang/String; = "wifi_hotspot_ssid_1"

.field public static final WIFI_HOTSPOT_SSID_2:Ljava/lang/String; = "wifi_hotspot_ssid_2"

.field public static final WIFI_HOTSPOT_SSID_3:Ljava/lang/String; = "wifi_hotspot_ssid_3"

.field public static final WIFI_PROXY:Ljava/lang/String; = "wifi_proxy"

.field public static final WIFI_PROXY_EXCEPTIONS:Ljava/lang/String; = "wifi_proxy_exceptions"

.field public static final WIFI_USE_AUTO_IP:Ljava/lang/String; = "wifi_use_auto_ip"

.field private static volatile mNameValueCache:Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/provider/MotorolaSettings;->mNameValueCache:Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;

    const-string v0, "content://com.motorola.android.providers.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MotorolaSettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 3
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, v:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :cond_0
    move v2, p2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, p2

    goto :goto_0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, v:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :cond_0
    move v2, p2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, p2

    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 4
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, valString:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 6
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    move-wide v2, v4

    .local v2, value:J
    :goto_0
    return-wide v2

    .end local v2           #value:J
    :cond_0
    move-wide v2, p2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2       #value:J
    goto :goto_0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "resolver"
    .parameter "name"

    .prologue
    const-class v0, Lcom/motorola/android/provider/MotorolaSettings;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/android/provider/MotorolaSettings;->mNameValueCache:Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;

    const-string v2, "sys.mot_settings_secure_version"

    sget-object v3, Lcom/motorola/android/provider/MotorolaSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v1, Lcom/motorola/android/provider/MotorolaSettings;->mNameValueCache:Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;

    :cond_0
    sget-object v1, Lcom/motorola/android/provider/MotorolaSettings;->mNameValueCache:Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;

    invoke-virtual {v1, p0, p1}, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "name"

    .prologue
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/motorola/android/provider/MotorolaSettings$NameValueTable;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/motorola/android/provider/MotorolaSettings$NameValueTable;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
