.class public interface abstract Lcom/android/internal/telephony/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Phone$SuppService;,
        Lcom/android/internal/telephony/Phone$DataActivityState;,
        Lcom/android/internal/telephony/Phone$DataState;,
        Lcom/android/internal/telephony/Phone$State;
    }
.end annotation


# static fields
.field public static final APN_ALREADY_ACTIVE:I = 0x0

.field public static final APN_ALREADY_INACTIVE:I = 0x4

.field public static final APN_REQUEST_FAILED:I = 0x3

.field public static final APN_REQUEST_STARTED:I = 0x1

.field public static final APN_TYPE_AGPS:Ljava/lang/String; = "agps"

.field public static final APN_TYPE_ALL:Ljava/lang/String; = "*"

.field public static final APN_TYPE_CBS:Ljava/lang/String; = "cbs"

.field public static final APN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final APN_TYPE_DUN:Ljava/lang/String; = "dun"

.field public static final APN_TYPE_ENTITLE:Ljava/lang/String; = "entitle"

.field public static final APN_TYPE_FOTA:Ljava/lang/String; = "fota"

.field public static final APN_TYPE_HIPRI:Ljava/lang/String; = "hipri"

.field public static final APN_TYPE_IMS:Ljava/lang/String; = "ims"

.field public static final APN_TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final APN_TYPE_NOT_AVAILABLE:I = 0x2

.field public static final APN_TYPE_SUPL:Ljava/lang/String; = "supl"

.field public static final BM_AUS2_BAND:I = 0x5

.field public static final BM_AUS_BAND:I = 0x4

.field public static final BM_BOUNDARY:I = 0x6

.field public static final BM_EURO_BAND:I = 0x1

.field public static final BM_JPN_BAND:I = 0x3

.field public static final BM_UNSPECIFIED:I = 0x0

.field public static final BM_US_BAND:I = 0x2

.field public static final CDMA_OTA_PROVISION_STATUS_A_KEY_EXCHANGED:I = 0x2

.field public static final CDMA_OTA_PROVISION_STATUS_COMMITTED:I = 0x8

.field public static final CDMA_OTA_PROVISION_STATUS_IMSI_DOWNLOADED:I = 0x6

.field public static final CDMA_OTA_PROVISION_STATUS_MDN_DOWNLOADED:I = 0x5

.field public static final CDMA_OTA_PROVISION_STATUS_NAM_DOWNLOADED:I = 0x4

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_ABORTED:I = 0xb

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_STARTED:I = 0x9

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_STOPPED:I = 0xa

.field public static final CDMA_OTA_PROVISION_STATUS_PRL_DOWNLOADED:I = 0x7

.field public static final CDMA_OTA_PROVISION_STATUS_SPC_RETRIES_EXCEEDED:I = 0x1

.field public static final CDMA_OTA_PROVISION_STATUS_SPL_UNLOCKED:I = 0x0

.field public static final CDMA_OTA_PROVISION_STATUS_SSD_UPDATED:I = 0x3

.field public static final CDMA_RM_AFFILIATED:I = 0x1

.field public static final CDMA_RM_ANY:I = 0x2

.field public static final CDMA_RM_ANY_BAND_A:I = 0x3

.field public static final CDMA_RM_ANY_BAND_B:I = 0x4

.field public static final CDMA_RM_HOME:I = 0x0

.field public static final CDMA_SUBSCRIPTION_NV:I = 0x1

.field public static final CDMA_SUBSCRIPTION_RUIM_SIM:I = 0x0

.field public static final DATA_APN_KEY:Ljava/lang/String; = "apn"

.field public static final DATA_APN_TYPES_KEY:Ljava/lang/String; = "apnType"

.field public static final DATA_GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field public static final DATA_IFACE_NAME_KEY:Ljava/lang/String; = "iface"

.field public static final DATA_IP_ADDR_1_KEY:Ljava/lang/String; = "ipaddr1"

.field public static final DATA_IP_ADDR_2_KEY:Ljava/lang/String; = "ipaddr2"

.field public static final DATA_IP_VERSION_TYPE:Ljava/lang/String; = "ipVersion"

.field public static final DATA_PDP_CID_KEY:Ljava/lang/String; = "cid"

.field public static final DEBUG_PHONE:Z = true

.field public static final FAILURE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final FEATURE_ENABLE_AGPS:Ljava/lang/String; = "enableAGPS"

.field public static final FEATURE_ENABLE_CBS:Ljava/lang/String; = "enableCBS"

.field public static final FEATURE_ENABLE_DUN:Ljava/lang/String; = "enableDUN"

.field public static final FEATURE_ENABLE_ENTITLE:Ljava/lang/String; = "enableENTITLE"

.field public static final FEATURE_ENABLE_FOTA:Ljava/lang/String; = "enableFOTA"

.field public static final FEATURE_ENABLE_HIPRI:Ljava/lang/String; = "enableHIPRI"

.field public static final FEATURE_ENABLE_IMS:Ljava/lang/String; = "enableIMS"

.field public static final FEATURE_ENABLE_MMS:Ljava/lang/String; = "enableMMS"

.field public static final FEATURE_ENABLE_SUPL:Ljava/lang/String; = "enableSUPL"

.field public static final IP_TYPE_V4:I = 0x0

.field public static final IP_TYPE_V6:I = 0x1

.field public static final IP_TYPE_V6V4:I = 0x2

.field public static final NETWORK_UNAVAILABLE_KEY:Ljava/lang/String; = "networkUnvailable"

.field public static final NT_MODE_CDMA:I = 0x4

.field public static final NT_MODE_CDMA_NO_EVDO:I = 0x5

.field public static final NT_MODE_EVDO_NO_CDMA:I = 0x6

.field public static final NT_MODE_GLOBAL:I = 0x7

.field public static final NT_MODE_GSM_ONLY:I = 0x1

.field public static final NT_MODE_GSM_UMTS:I = 0x3

.field public static final NT_MODE_LTE_ONLY:I = 0x8

.field public static final NT_MODE_WCDMA_ONLY:I = 0x2

.field public static final NT_MODE_WCDMA_PREF:I = 0x0

.field public static final PHONE_IN_ECM_STATE:Ljava/lang/String; = "phoneinECMState"

.field public static final PHONE_NAME_KEY:Ljava/lang/String; = "phoneName"

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final PREFERRED_CDMA_SUBSCRIPTION:I = 0x1

.field public static final PREFERRED_NT_MODE:I = 0x0

.field public static final REASON_APN_CHANGED:Ljava/lang/String; = "apnChanged"

.field public static final REASON_APN_FAILED:Ljava/lang/String; = "apnFailed"

.field public static final REASON_APN_SWITCHED:Ljava/lang/String; = "apnSwitched"

.field public static final REASON_CDMA_DATA_ATTACHED:Ljava/lang/String; = "cdmaDataAttached"

.field public static final REASON_CDMA_DATA_DETACHED:Ljava/lang/String; = "cdmaDataDetached"

.field public static final REASON_DATA_DISABLED:Ljava/lang/String; = "dataDisabled"

.field public static final REASON_DATA_ENABLED:Ljava/lang/String; = "dataEnabled"

.field public static final REASON_DUN_DISABLED:Ljava/lang/String; = "dunDisabled"

.field public static final REASON_DUN_ENABLED:Ljava/lang/String; = "dunEnabled"

.field public static final REASON_GPRS_ATTACHED:Ljava/lang/String; = "gprsAttached"

.field public static final REASON_GPRS_DETACHED:Ljava/lang/String; = "gprsDetached"

.field public static final REASON_IMSPDN_NW_INITIATED:Ljava/lang/String; = "imsPdnNwInitiated"

.field public static final REASON_NW_TYPE_CHANGED:Ljava/lang/String; = "nwTypeChanged"

.field public static final REASON_PDP_RESET:Ljava/lang/String; = "pdpReset"

.field public static final REASON_PS_RESTRICT_DISABLED:Ljava/lang/String; = "psRestrictDisabled"

.field public static final REASON_PS_RESTRICT_ENABLED:Ljava/lang/String; = "psRestrictEnabled"

.field public static final REASON_RADIO_TURNED_OFF:Ljava/lang/String; = "radioTurnedOff"

.field public static final REASON_RESTORE_DEFAULT_APN:Ljava/lang/String; = "restoreDefaultApn"

.field public static final REASON_ROAMING_OFF:Ljava/lang/String; = "roamingOff"

.field public static final REASON_ROAMING_ON:Ljava/lang/String; = "roamingOn"

.field public static final REASON_SIM_LOADED:Ljava/lang/String; = "simLoaded"

.field public static final REASON_VOICE_CALL_ENDED:Ljava/lang/String; = "2GVoiceCallEnded"

.field public static final REASON_VOICE_CALL_STARTED:Ljava/lang/String; = "2GVoiceCallStarted"

.field public static final STATE_CHANGE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final STATE_KEY:Ljava/lang/String; = "state"

.field public static final TTY_MODE_FULL:I = 0x1

.field public static final TTY_MODE_HCO:I = 0x2

.field public static final TTY_MODE_OFF:I = 0x0

.field public static final TTY_MODE_VCO:I = 0x3


# virtual methods
.method public abstract acceptCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract activateCellBroadcastSms(ILandroid/os/Message;)V
.end method

.method public abstract addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V
.end method

.method public abstract canConference()Z
.end method

.method public abstract canTransfer()Z
.end method

.method public abstract changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
.end method

.method public abstract clearDisconnected()V
.end method

.method public abstract conference()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract disableApnType(Ljava/lang/String;)I
.end method

.method public abstract disableDataConnectivity()Z
.end method

.method public abstract disableDnsCheck(Z)V
.end method

.method public abstract disableLocationUpdates()V
.end method

.method public abstract enableApnType(Ljava/lang/String;)I
.end method

.method public abstract enableDataConnectivity()Z
.end method

.method public abstract enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
.end method

.method public abstract enableLocationUpdates()V
.end method

.method public abstract exitEmergencyCallbackMode()V
.end method

.method public abstract explicitCallTransfer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract getActiveApn()Ljava/lang/String;
.end method

.method public abstract getActiveApn(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getActiveApnTypes()[Ljava/lang/String;
.end method

.method public abstract getAllCountryList()[Lcom/motorola/android/telephony/MCCEntry;
.end method

.method public abstract getAvailableNetworks(Landroid/os/Message;)V
.end method

.method public abstract getBackgroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getCallForwardingIndicator()Z
.end method

.method public abstract getCallForwardingOption(ILandroid/os/Message;)V
.end method

.method public abstract getCallWaiting(Landroid/os/Message;)V
.end method

.method public abstract getCdmaEriAlertUri()Landroid/net/Uri;
.end method

.method public abstract getCdmaEriFileVersion()I
.end method

.method public abstract getCdmaEriIconIndex()I
.end method

.method public abstract getCdmaEriIconMode()I
.end method

.method public abstract getCdmaEriText()Ljava/lang/String;
.end method

.method public abstract getCdmaMin()Ljava/lang/String;
.end method

.method public abstract getCdmaPrlVersion()Ljava/lang/String;
.end method

.method public abstract getCellBroadcastSmsConfig(Landroid/os/Message;)V
.end method

.method public abstract getCellLocation()Landroid/telephony/CellLocation;
.end method

.method public abstract getCellsInfo(Landroid/os/Message;)V
.end method

.method public abstract getCid(Ljava/lang/String;)I
.end method

.method public abstract getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCurrentDataConnectionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
.end method

.method public abstract getDataCallList(Landroid/os/Message;)V
.end method

.method public abstract getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
.end method

.method public abstract getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
.end method

.method public abstract getDataRoamingEnabled()Z
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceSvn()Ljava/lang/String;
.end method

.method public abstract getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getEnhancedVoicePrivacy(Landroid/os/Message;)V
.end method

.method public abstract getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;
.end method

.method public abstract getEsn()Ljava/lang/String;
.end method

.method public abstract getForegroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getGateway(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getGateways(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getGsmBroadcastConfig(Landroid/os/Message;)V
.end method

.method public abstract getGsmImei()Ljava/lang/String;
.end method

.method public abstract getGsmImeiSv()Ljava/lang/String;
.end method

.method public abstract getHomeSystemId()[I
.end method

.method public abstract getIccCard()Lcom/android/internal/telephony/IccCard;
.end method

.method public abstract getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
.end method

.method public abstract getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end method

.method public abstract getIccRecordsLoaded()Z
.end method

.method public abstract getIccSerialNumber()Ljava/lang/String;
.end method

.method public abstract getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end method

.method public abstract getIncomingCallerIdDisplay(Landroid/os/Message;)V
.end method

.method public abstract getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getIpAddress(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getIpAddresses(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getIpVersion(Ljava/lang/String;)I
.end method

.method public abstract getLine1AlphaTag()Ljava/lang/String;
.end method

.method public abstract getLine1Number()Ljava/lang/String;
.end method

.method public abstract getMeid()Ljava/lang/String;
.end method

.method public abstract getMessageWaitingIndicator()Z
.end method

.method public abstract getMute()Z
.end method

.method public abstract getNeighboringCids(Landroid/os/Message;)V
.end method

.method public abstract getOutgoingCallerIdDisplay(Landroid/os/Message;)V
.end method

.method public abstract getPendingMmiCodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhoneName()Ljava/lang/String;
.end method

.method public abstract getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
.end method

.method public abstract getPhoneType()I
.end method

.method public abstract getPreferredNetworkType(Landroid/os/Message;)V
.end method

.method public abstract getReadPlmnModeFlag()Z
.end method

.method public abstract getRingingCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getServiceState()Landroid/telephony/ServiceState;
.end method

.method public abstract getSignalStrength()Landroid/telephony/SignalStrength;
.end method

.method public abstract getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
.end method

.method public abstract getSmscAddress(Landroid/os/Message;)V
.end method

.method public abstract getState()Lcom/android/internal/telephony/Phone$State;
.end method

.method public abstract getSubscriberId()Ljava/lang/String;
.end method

.method public abstract getUnitTestMode()Z
.end method

.method public abstract getVoiceMailAlphaTag()Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumber()Ljava/lang/String;
.end method

.method public abstract getVoiceMessageCount()I
.end method

.method public abstract getVoicemailPriority()I
.end method

.method public abstract handleInCallMmiCommands(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract handlePinMmi(Ljava/lang/String;)Z
.end method

.method public abstract invokeOemRilRequestRaw([BLandroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract isCtryNameExist(Ljava/lang/String;)Z
.end method

.method public abstract isCurrentMccUnknown()Z
.end method

.method public abstract isDataConnectivityEnabled()Z
.end method

.method public abstract isDataConnectivityPossible()Z
.end method

.method public abstract isDnsCheckDisabled()Z
.end method

.method public abstract isMinInfoReady()Z
.end method

.method public abstract isOtaSpNumber(Ljava/lang/String;)Z
.end method

.method public abstract isUnknownCountryExist()Z
.end method

.method public abstract notifyDataActivity()V
.end method

.method public abstract queryAvailableBandMode(Landroid/os/Message;)V
.end method

.method public abstract queryCdmaRoamingPreference(Landroid/os/Message;)V
.end method

.method public abstract queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
.end method

.method public abstract queryTTYMode(Landroid/os/Message;)V
.end method

.method public abstract registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSuppServiceCompleted(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForUnknownMcc(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerRilError(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract removeUnknownCountry()V
.end method

.method public abstract selectNetworkManually(Lcom/android/internal/telephony/gsm/NetworkInfo;Landroid/os/Message;)V
.end method

.method public abstract sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract sendDtmf(C)V
.end method

.method public abstract sendUssdResponse(Ljava/lang/String;)V
.end method

.method public abstract setBandMode(ILandroid/os/Message;)V
.end method

.method public abstract setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setCallWaiting(ZLandroid/os/Message;)V
.end method

.method public abstract setCdmaRoamingPreference(ILandroid/os/Message;)V
.end method

.method public abstract setCdmaSubscription(ILandroid/os/Message;)V
.end method

.method public abstract setCellBroadcastSmsConfig([ILandroid/os/Message;)V
.end method

.method public abstract setDataRoamingEnabled(Z)V
.end method

.method public abstract setEchoSuppressionEnabled(Z)V
.end method

.method public abstract setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)Z
.end method

.method public abstract setGsmBroadcastActivation(ZLandroid/os/Message;)V
.end method

.method public abstract setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
.end method

.method public abstract setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
.end method

.method public abstract setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
.end method

.method public abstract setPreferredNetworkType(ILandroid/os/Message;)V
.end method

.method public abstract setRadioPower(Z)V
.end method

.method public abstract setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setTTYMode(ILandroid/os/Message;)V
.end method

.method public abstract setUnitTestMode(Z)V
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract startDtmf(C)V
.end method

.method public abstract startNetworkQuery(Landroid/os/Message;)V
.end method

.method public abstract stopDtmf()V
.end method

.method public abstract stopNetworkQuery()V
.end method

.method public abstract switchHoldingAndActive()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract toAttmptNBPCD()Z
.end method

.method public abstract unRegisterRilError(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallWaiting(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDisconnect(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDisplayInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForEcmTimerReset(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIncomingRing(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLineControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMmiComplete(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMmiInitiate(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNewRingingConnection(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForResendIncallMute(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRingbackTone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForServiceStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSignalInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSuppServiceCompleted(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSuppServiceFailed(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSuppServiceNotification(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53ClirInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForUnknownConnection(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForUnknownMcc(Landroid/os/Handler;)V
.end method

.method public abstract unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
.end method

.method public abstract updateServiceLocation()V
.end method
