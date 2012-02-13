.class public interface abstract Lcom/android/internal/telephony/RILConstants;
.super Ljava/lang/Object;
.source "RILConstants.java"


# static fields
.field public static final CDMA_CELL_BROADCAST_SMS_DISABLED:I = 0x1

.field public static final CDMA_CELL_BROADCAST_SMS_ENABLED:I = 0x0

.field public static final CDMA_PHONE:I = 0x2

.field public static final CDM_TTY_FULL_MODE:I = 0x1

.field public static final CDM_TTY_HCO_MODE:I = 0x2

.field public static final CDM_TTY_MODE_DISABLED:I = 0x0

.field public static final CDM_TTY_MODE_ENABLED:I = 0x1

.field public static final CDM_TTY_VCO_MODE:I = 0x3

.field public static final DATA_PROFILE_DEFAULT:I = 0x0

.field public static final DATA_PROFILE_OEM_BASE:I = 0x3e8

.field public static final DATA_PROFILE_TETHERED:I = 0x1

.field public static final FDN_CHECK_FAILURE:I = 0xe

.field public static final GENERIC_FAILURE:I = 0x2

.field public static final GSM_PHONE:I = 0x1

.field public static final ILLEGAL_SIM_OR_ME:I = 0xf

.field public static final IMS_FAILURE_4XX:I = 0x81

.field public static final IMS_FAILURE_5XX:I = 0x82

.field public static final IMS_FAILURE_AUTH:I = 0x84

.field public static final IMS_FAILURE_TIMEOUTS:I = 0x83

.field public static final MODE_NOT_SUPPORTED:I = 0xd

.field public static final NETWORK_MODE_CDMA:I = 0x4

.field public static final NETWORK_MODE_CDMA_NO_EVDO:I = 0x5

.field public static final NETWORK_MODE_EVDO_NO_CDMA:I = 0x6

.field public static final NETWORK_MODE_GLOBAL:I = 0x7

.field public static final NETWORK_MODE_GSM_ONLY:I = 0x1

.field public static final NETWORK_MODE_GSM_UMTS:I = 0x3

.field public static final NETWORK_MODE_LTE_ONLY:I = 0x8

.field public static final NETWORK_MODE_WCDMA_ONLY:I = 0x2

.field public static final NETWORK_MODE_WCDMA_PREF:I = 0x0

.field public static final NO_PHONE:I = 0x0

.field public static final OP_NOT_ALLOWED_BEFORE_REG_NW:I = 0x9

.field public static final OP_NOT_ALLOWED_DURING_VOICE_CALL:I = 0x8

.field public static final PASSWORD_INCORRECT:I = 0x3

.field public static final PDP_DEACTIVATE_CAUSE_NONE:I = 0x0

.field public static final PDP_DEACTIVATE_CAUSE_POWER_OFF:I = 0x1

.field public static final PDP_FAIL_IPV6_RS_ERROR:I = 0x80

.field public static final PREFERRED_CDMA_SUBSCRIPTION:I = 0x1

.field public static final PREFERRED_NETWORK_MODE:I = 0x0

.field public static final PROFILE_CBS:I = 0x68

.field public static final PROFILE_FOTA:I = 0x66

.field public static final PROFILE_IMS:I = 0x65

.field public static final PROFILE_INTERNET:I = 0x67

.field public static final RADIO_NOT_AVAILABLE:I = 0x1

.field public static final REQUEST_CANCELLED:I = 0x7

.field public static final REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final RIL_ERRNO_INVALID_RESPONSE:I = -0x1

.field public static final RIL_REQUEST_ANSWER:I = 0x28

.field public static final RIL_REQUEST_BASEBAND_VERSION:I = 0x33

.field public static final RIL_REQUEST_CANCEL_USSD:I = 0x1e

.field public static final RIL_REQUEST_CDMA_BROADCAST_ACTIVATION:I = 0x5e

.field public static final RIL_REQUEST_CDMA_BURST_DTMF:I = 0x55

.field public static final RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM:I = 0x61

.field public static final RIL_REQUEST_CDMA_FLASH:I = 0x54

.field public static final RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG:I = 0x5c

.field public static final RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE:I = 0x53

.field public static final RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE:I = 0x4f

.field public static final RIL_REQUEST_CDMA_SEND_SMS:I = 0x57

.field public static final RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG:I = 0x5d

.field public static final RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE:I = 0x52

.field public static final RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE:I = 0x4e

.field public static final RIL_REQUEST_CDMA_SET_SUBSCRIPTION:I = 0x4d

.field public static final RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE:I = 0x58

.field public static final RIL_REQUEST_CDMA_SUBSCRIPTION:I = 0x5f

.field public static final RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY:I = 0x56

.field public static final RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM:I = 0x60

.field public static final RIL_REQUEST_CHANGE_BARRING_PASSWORD:I = 0x2c

.field public static final RIL_REQUEST_CHANGE_SIM_PIN:I = 0x6

.field public static final RIL_REQUEST_CHANGE_SIM_PIN2:I = 0x7

.field public static final RIL_REQUEST_CONFERENCE:I = 0x10

.field public static final RIL_REQUEST_DATA_CALL_LIST:I = 0x39

.field public static final RIL_REQUEST_DEACTIVATE_DATA_CALL:I = 0x29

.field public static final RIL_REQUEST_DELETE_SMS_ON_SIM:I = 0x40

.field public static final RIL_REQUEST_DEVICE_IDENTITY:I = 0x62

.field public static final RIL_REQUEST_DIAL:I = 0xa

.field public static final RIL_REQUEST_DTMF:I = 0x18

.field public static final RIL_REQUEST_DTMF_START:I = 0x31

.field public static final RIL_REQUEST_DTMF_STOP:I = 0x32

.field public static final RIL_REQUEST_ENTER_NETWORK_DEPERSONALIZATION:I = 0x8

.field public static final RIL_REQUEST_ENTER_SIM_PIN:I = 0x2

.field public static final RIL_REQUEST_ENTER_SIM_PIN2:I = 0x4

.field public static final RIL_REQUEST_ENTER_SIM_PUK:I = 0x3

.field public static final RIL_REQUEST_ENTER_SIM_PUK2:I = 0x5

.field public static final RIL_REQUEST_EXIT_EMERGENCY_CALLBACK_MODE:I = 0x63

.field public static final RIL_REQUEST_EXPLICIT_CALL_TRANSFER:I = 0x48

.field public static final RIL_REQUEST_GET_CLIR:I = 0x1f

.field public static final RIL_REQUEST_GET_CURRENT_CALLS:I = 0x9

.field public static final RIL_REQUEST_GET_IMEI:I = 0x26

.field public static final RIL_REQUEST_GET_IMEISV:I = 0x27

.field public static final RIL_REQUEST_GET_IMSI:I = 0xb

.field public static final RIL_REQUEST_GET_MUTE:I = 0x36

.field public static final RIL_REQUEST_GET_NEIGHBORING_CELL_IDS:I = 0x4b

.field public static final RIL_REQUEST_GET_PREFERRED_NETWORK_TYPE:I = 0x4a

.field public static final RIL_REQUEST_GET_SIM_STATUS:I = 0x1

.field public static final RIL_REQUEST_GET_SMSC_ADDRESS:I = 0x64

.field public static final RIL_REQUEST_GPRS_REGISTRATION_STATE:I = 0x15

.field public static final RIL_REQUEST_GSM_BROADCAST_ACTIVATION:I = 0x5b

.field public static final RIL_REQUEST_GSM_GET_BROADCAST_CONFIG:I = 0x59

.field public static final RIL_REQUEST_GSM_SET_BROADCAST_CONFIG:I = 0x5a

.field public static final RIL_REQUEST_HANGUP:I = 0xc

.field public static final RIL_REQUEST_HANGUP_FOREGROUND_RESUME_BACKGROUND:I = 0xe

.field public static final RIL_REQUEST_HANGUP_WAITING_OR_BACKGROUND:I = 0xd

.field public static final RIL_REQUEST_LAST_CALL_FAIL_CAUSE:I = 0x12

.field public static final RIL_REQUEST_LAST_DATA_CALL_FAIL_CAUSE:I = 0x38

.field public static final RIL_REQUEST_OEM_HOOK_RAW:I = 0x3b

.field public static final RIL_REQUEST_OEM_HOOK_STRINGS:I = 0x3c

.field public static final RIL_REQUEST_OPERATOR:I = 0x16

.field public static final RIL_REQUEST_QUERY_AVAILABLE_BAND_MODE:I = 0x42

.field public static final RIL_REQUEST_QUERY_AVAILABLE_NETWORKS:I = 0x30

.field public static final RIL_REQUEST_QUERY_CALL_FORWARD_STATUS:I = 0x21

.field public static final RIL_REQUEST_QUERY_CALL_WAITING:I = 0x23

.field public static final RIL_REQUEST_QUERY_CLIP:I = 0x37

.field public static final RIL_REQUEST_QUERY_FACILITY_LOCK:I = 0x2a

.field public static final RIL_REQUEST_QUERY_NETWORK_SELECTION_MODE:I = 0x2d

.field public static final RIL_REQUEST_QUERY_TTY_MODE:I = 0x51

.field public static final RIL_REQUEST_RADIO_POWER:I = 0x17

.field public static final RIL_REQUEST_REGISTRATION_STATE:I = 0x14

.field public static final RIL_REQUEST_REPORT_SMS_MEMORY_STATUS:I = 0x66

.field public static final RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING:I = 0x67

.field public static final RIL_REQUEST_RESET_RADIO:I = 0x3a

.field public static final RIL_REQUEST_SCREEN_STATE:I = 0x3d

.field public static final RIL_REQUEST_SEND_SMS:I = 0x19

.field public static final RIL_REQUEST_SEND_SMS_EXPECT_MORE:I = 0x1a

.field public static final RIL_REQUEST_SEND_USSD:I = 0x1d

.field public static final RIL_REQUEST_SEPARATE_CONNECTION:I = 0x34

.field public static final RIL_REQUEST_SETUP_DATA_CALL:I = 0x1b

.field public static final RIL_REQUEST_SET_BAND_MODE:I = 0x41

.field public static final RIL_REQUEST_SET_CALL_FORWARD:I = 0x22

.field public static final RIL_REQUEST_SET_CALL_WAITING:I = 0x24

.field public static final RIL_REQUEST_SET_CLIR:I = 0x20

.field public static final RIL_REQUEST_SET_FACILITY_LOCK:I = 0x2b

.field public static final RIL_REQUEST_SET_LOCATION_UPDATES:I = 0x4c

.field public static final RIL_REQUEST_SET_MUTE:I = 0x35

.field public static final RIL_REQUEST_SET_NETWORK_SELECTION_AUTOMATIC:I = 0x2e

.field public static final RIL_REQUEST_SET_NETWORK_SELECTION_MANUAL:I = 0x2f

.field public static final RIL_REQUEST_SET_PREFERRED_NETWORK_TYPE:I = 0x49

.field public static final RIL_REQUEST_SET_SMSC_ADDRESS:I = 0x65

.field public static final RIL_REQUEST_SET_SUPP_SVC_NOTIFICATION:I = 0x3e

.field public static final RIL_REQUEST_SET_TTY_MODE:I = 0x50

.field public static final RIL_REQUEST_SIGNAL_STRENGTH:I = 0x13

.field public static final RIL_REQUEST_SIM_IO:I = 0x1c

.field public static final RIL_REQUEST_SMS_ACKNOWLEDGE:I = 0x25

.field public static final RIL_REQUEST_STK_GET_PROFILE:I = 0x43

.field public static final RIL_REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM:I = 0x47

.field public static final RIL_REQUEST_STK_SEND_ENVELOPE_COMMAND:I = 0x45

.field public static final RIL_REQUEST_STK_SEND_TERMINAL_RESPONSE:I = 0x46

.field public static final RIL_REQUEST_STK_SET_PROFILE:I = 0x44

.field public static final RIL_REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE:I = 0xf

.field public static final RIL_REQUEST_UDUB:I = 0x11

.field public static final RIL_REQUEST_WRITE_SMS_TO_SIM:I = 0x3f

.field public static final RIL_REQUEST_WRITE_SMS_TO_SIM_QCOM:I = 0x68

.field public static final RIL_RESTRICTED_STATE_CS_ALL:I = 0x4

.field public static final RIL_RESTRICTED_STATE_CS_EMERGENCY:I = 0x1

.field public static final RIL_RESTRICTED_STATE_CS_NORMAL:I = 0x2

.field public static final RIL_RESTRICTED_STATE_NONE:I = 0x0

.field public static final RIL_RESTRICTED_STATE_PS_ALL:I = 0x10

.field public static final RIL_UNSOL_CALL_RING:I = 0x3fa

.field public static final RIL_UNSOL_CDMA_CALL_WAITING:I = 0x401

.field public static final RIL_UNSOL_CDMA_INFO_REC:I = 0x403

.field public static final RIL_UNSOL_CDMA_OTA_PROVISION_STATUS:I = 0x402

.field public static final RIL_UNSOL_CDMA_RUIM_SMS_STORAGE_FULL:I = 0x3fe

.field public static final RIL_UNSOL_DATA_CALL_LIST_CHANGED:I = 0x3f2

.field public static final RIL_UNSOL_ENTER_EMERGENCY_CALLBACK_MODE:I = 0x400

.field public static final RIL_UNSOL_NITZ_TIME_RECEIVED:I = 0x3f0

.field public static final RIL_UNSOL_OEM_HOOK_RAW:I = 0x404

.field public static final RIL_UNSOL_ON_USSD:I = 0x3ee

.field public static final RIL_UNSOL_ON_USSD_REQUEST:I = 0x3ef

.field public static final RIL_UNSOL_RESEND_INCALL_MUTE:I = 0x406

.field public static final RIL_UNSOL_RESPONSE_BASE:I = 0x3e8

.field public static final RIL_UNSOL_RESPONSE_CALL_STATE_CHANGED:I = 0x3e9

.field public static final RIL_UNSOL_RESPONSE_CDMA_NEW_SMS:I = 0x3fc

.field public static final RIL_UNSOL_RESPONSE_NETWORK_STATE_CHANGED:I = 0x3ea

.field public static final RIL_UNSOL_RESPONSE_NEW_BROADCAST_SMS:I = 0x3fd

.field public static final RIL_UNSOL_RESPONSE_NEW_SMS:I = 0x3eb

.field public static final RIL_UNSOL_RESPONSE_NEW_SMS_ON_SIM:I = 0x3ed

.field public static final RIL_UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT:I = 0x3ec

.field public static final RIL_UNSOL_RESPONSE_RADIO_STATE_CHANGED:I = 0x3e8

.field public static final RIL_UNSOL_RESPONSE_SIM_STATUS_CHANGED:I = 0x3fb

.field public static final RIL_UNSOL_RESTRICTED_STATE_CHANGED:I = 0x3ff

.field public static final RIL_UNSOL_RINGBACK_TONE:I = 0x405

.field public static final RIL_UNSOL_SIGNAL_STRENGTH:I = 0x3f1

.field public static final RIL_UNSOL_SIM_REFRESH:I = 0x3f9

.field public static final RIL_UNSOL_SIM_SMS_STORAGE_FULL:I = 0x3f8

.field public static final RIL_UNSOL_STK_CALL_SETUP:I = 0x3f7

.field public static final RIL_UNSOL_STK_EVENT_NOTIFY:I = 0x3f6

.field public static final RIL_UNSOL_STK_PROACTIVE_COMMAND:I = 0x3f5

.field public static final RIL_UNSOL_STK_SESSION_END:I = 0x3f4

.field public static final RIL_UNSOL_SUPP_SVC_NOTIFICATION:I = 0x3f3

.field public static final SETUP_DATA_AUTH_CHAP:I = 0x2

.field public static final SETUP_DATA_AUTH_NONE:I = 0x0

.field public static final SETUP_DATA_AUTH_PAP:I = 0x1

.field public static final SETUP_DATA_AUTH_PAP_CHAP:I = 0x3

.field public static final SETUP_DATA_PROTOCOL_IP:Ljava/lang/String; = "IP"

.field public static final SETUP_DATA_PROTOCOL_IPV4V6:Ljava/lang/String; = "IPV4V6"

.field public static final SETUP_DATA_PROTOCOL_IPV6:Ljava/lang/String; = "IPV6"

.field public static final SETUP_DATA_TECH_CDMA:I = 0x0

.field public static final SETUP_DATA_TECH_GSM:I = 0x1

.field public static final SIM_ABSENT:I = 0xb

.field public static final SIM_PIN2:I = 0x4

.field public static final SIM_PUK2:I = 0x5

.field public static final SIP_PHONE:I = 0x3

.field public static final SMS_SEND_FAIL_RETRY:I = 0xa

.field public static final SUBSCRIPTION_FROM_NV:I = 0x1

.field public static final SUBSCRIPTION_FROM_RUIM:I = 0x0

.field public static final SUBSCRIPTION_NOT_AVAILABLE:I = 0xc

.field public static final SUCCESS:I
