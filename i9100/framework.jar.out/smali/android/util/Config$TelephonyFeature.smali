.class public final Landroid/util/Config$TelephonyFeature;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TelephonyFeature"
.end annotation


# static fields
.field public static final CONFIG_CALL_BARRING_API_FEATURE:Z = true

.field public static final CONFIG_CALL_DEFLECTION_FEATURE:Z = true

.field public static final CONFIG_CALL_NTT_CALLWAIT_TONE_LONG_FEATURE:Z = false

.field public static final CONFIG_CALL_NTT_DSAC_FEATURE:Z = false

.field public static final CONFIG_CALL_NTT_PROHIBIT_CALL_TRANSFER:Z = false

.field public static final CONFIG_CALL_NTT_PROHIBIT_CONFERENCE_CALL:Z = false

.field public static final CONFIG_CALL_NTT_PROHIBIT_SECOND_IN_EMERGENCY_FEATURE:Z = false

.field public static final CONFIG_CALL_RINGTONE_FIX_FEATURE:Z = true

.field public static final CONFIG_CB_FEATURE:Z = true

.field public static final CONFIG_CHECK_MCC_FEATURE:Z = true

.field public static final CONFIG_CNAP_FEATURE:Z = true

.field public static final CONFIG_COPY_TO_SIM_FEATURE:Z = true

.field public static final CONFIG_EMERGENCY_CALL_FEATURE:Z = true

.field public static final CONFIG_ENABLE_ECCLIST_WITH_PLMN:Z = true

.field public static final CONFIG_EXTENDED_SPN_OVERRIDE:Z = true

.field public static final CONFIG_FAKECALL_FEATURE:Z = true

.field public static final CONFIG_FAST_DORMANCY_FEATURE:Z = true

.field public static final CONFIG_FD_LCD_POLICY_FEATURE:Z = true

.field public static final CONFIG_FD_ON_DEFAULT_FEATURE:Z = true

.field public static final CONFIG_GCF_SS_FEATURE:Z = true

.field public static final CONFIG_GSM7BIT_INPUT_METHOD_FEATURE:Z = true

.field public static final CONFIG_INTERNET_SHARING_ONE_CHIP:Z = false

.field public static final CONFIG_INTERNET_SHARING_POLICY:Z = true

.field public static final CONFIG_INTERNET_SHARING_TWO_CHIP:Z = true

.field public static final CONFIG_JPN_NTT_RIL_FEATURE:Z = false

.field public static final CONFIG_JPN_NTT_RIL_SMS_SLC_FEATURE:Z = false

.field public static final CONFIG_L3_ACK_FEATURE:Z = true

.field public static final CONFIG_MANAGE_ONLINE_ALBUM_FEATURE:Z = false

.field public static final CONFIG_MATCH_PHONEBOOK_11DIGIT_FEATURE:Z = true

.field public static final CONFIG_MMS_DELIVERYREPORT_FEATURE:Z = true

.field public static final CONFIG_MMS_LOCAL_TIME:Z = false

.field public static final CONFIG_MMS_READREPORT_FEATURE:Z = true

.field public static final CONFIG_MMS_SUBJECT_FEATURE:Z = true

.field public static final CONFIG_MOBILE_TRACKER:Z = true

.field public static final CONFIG_MULTIPLE_PDP_FEATURE:Z = true

.field public static final CONFIG_NATIONAL_LANGUAGE_SINGLE_SHIFT_TABLES:Z = false

.field public static final CONFIG_NETWORK_NTT_FORBIDDEN_SHOW:Z = false

.field public static final CONFIG_NOTIFY_TIMECHANGE:Z = true

.field public static final CONFIG_NTT_DATA_DUN_FEATURE:Z = false

.field public static final CONFIG_NTT_DSAC_FEATURE:Z = false

.field public static final CONFIG_NTT_EMERGENCY_CALL_FEATURE:Z = false

.field public static final CONFIG_NTT_SMS_DSAC_FEATURE:Z = false

.field public static final CONFIG_NTT_SMS_EXPIRED_FEATURE:Z = false

.field public static final CONFIG_NTT_SMS_NPI_VALUE_FEATURE:Z = false

.field public static final CONFIG_NTT_SMS_RIL_FEATURE:Z = false

.field public static final CONFIG_NTT_SMS_SMSP_FEATURE:Z = false

.field public static final CONFIG_PHONEBOOKAPI_FEATURE:Z = true

.field public static final CONFIG_QWERTY_KEYPAD_FEATURE:Z = false

.field public static final CONFIG_REPLY_PATH_FEATURE:Z = true

.field public static final CONFIG_SEC_MODEM_POWER_OFF_FEATURE:Z = true

.field public static final CONFIG_SEC_MSISDN_FEATURE:Z = true

.field public static final CONFIG_SEC_RADIO_POWER_STATE_FEATURE:Z = true

.field public static final CONFIG_SEC_READ_PROP_INFO_FROM_FILE_USONLY_FEATURE:Z = false

.field public static final CONFIG_SEC_SIM_PIN_PUK_FEATURE:Z = true

.field public static final CONFIG_SIM_PROFILE_FEATURE:Z = true

.field public static final CONFIG_SMSC_FEATURE:Z = true

.field public static final CONFIG_SMS_DELIVERYREPORT_FEATURE:Z = true

.field public static final CONFIG_SMS_EMPTYBODY_SUPPORT_FEATURE:Z = false

.field public static final CONFIG_SMS_GCF_PDA_MEMORY_FULL_TEST:Z = true

.field public static final CONFIG_SMS_LOCAL_TIME:Z = true

.field public static final CONFIG_SMS_OTA_MESSAGE_FEATURE:Z = false

.field public static final CONFIG_SPLIT_SIGNAL_BARS_AND_RSSI:Z = true

.field public static final CONFIG_SS_BARRING_PASSWORD_FEATURE:Z = true

.field public static final CONFIG_SS_CROATIA_FEATURE:Z = true

.field public static final CONFIG_SS_FORWARDING_ICON_FEATURE:Z = true

.field public static final CONFIG_SS_SERBIA_FEATURE:Z = true

.field public static final CONFIG_STK_DISPLAY_ICON_FEATURE:Z = false

.field public static final CONFIG_TETHERING_USE_OPERATOR_DNS_FEATURE:Z = true

.field public static final CONFIG_USE_BIP_APN_FEATURE:Z = true

.field public static final CONFIG_USE_DUN_TETHERING_MOBILEAP_FEATURE:Z = true

.field public static final CONFIG_US_SPR_IGNORE_DISPOSITON_FIELD:Z = false

.field public static final CONFIG_VT_SUPPORT:Z = true

.field public static final CONFIG_WAP_PUSH_ATT_FEATURE:Z = false

.field public static final GsmCallTracker_MAX_CONNECTIONS:I = 0x8


# instance fields
.field final synthetic this$0:Landroid/util/Config;


# direct methods
.method public constructor <init>(Landroid/util/Config;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Landroid/util/Config$TelephonyFeature;->this$0:Landroid/util/Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
