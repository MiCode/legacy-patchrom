.class public Lcom/android/phone/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtils$8;,
        Lcom/android/phone/PhoneUtils$CallerInfoToken;,
        Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;,
        Lcom/android/phone/PhoneUtils$ConnectionHandler;,
        Lcom/android/phone/PhoneUtils$MMIDialogListener;,
        Lcom/android/phone/PhoneUtils$ScreenSize;
    }
.end annotation


# static fields
.field static final ADD_CALL_MODE_KEY:Ljava/lang/String; = "add_call_mode"

.field private static final AP_PREFERENCES:Ljava/lang/String; = "ap_preferences"

.field private static final AP_PREF_VOICE_QUALITY:Ljava/lang/String; = "voice_quality"

.field static final AUDIO_IDLE:I = 0x0

.field static final AUDIO_OFFHOOK:I = 0x2

.field static final AUDIO_RINGING:I = 0x1

.field static final CALL_INCOMING_DELAY_FOR_CONNECT_HDMI:I = 0x2

.field static final CALL_INCOMING_IGNORE_FOR_HDMI:I = 0x1

.field static final CALL_INCOMING_NONE:I = 0x0

.field static final CALL_INCOMING_PLAY_HDMI:I = 0x3

.field static final CALL_RESTRICTION_ALLOW_ALL:I = 0x0

.field static final CALL_RESTRICTION_BLOCK_ALL:I = 0x2

.field static final CALL_RESTRICTION_CONTACT_ONLY:I = 0x1

.field static final CALL_STATUS_DIALED:I = 0x0

.field static final CALL_STATUS_DIALED_MMI:I = 0x1

.field static final CALL_STATUS_FAILED:I = 0x2

.field static final CALL_STATUS_NONE:I = 0x3

.field private static final CNAP_SPECIAL_CASE_NO:I = -0x1

.field static final COL_NAME:Ljava/lang/String; = "name"

.field static final COL_VALUE:Ljava/lang/String; = "value"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DBG_SETAUDIOMODE_STACK:Z = false

.field private static final EQUAL_SERVICE_NUMBER:Ljava/lang/String; = "equal_Service_Number"

.field private static ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection; = null

.field static final GsmCallerIdBlockNo:Ljava/lang/String; = "#31#"

.field static final GsmCallerIdUnblockNo:Ljava/lang/String; = "*31#"

.field static final HDMI_STATUS:Ljava/lang/String; = "content://com.motorola.provider.hdmi_status/hdmi_status"

.field private static final INTENT_ACTION_CALLING_MUTE_RESP:Ljava/lang/String; = "android.mot.internal.intent.action.CALLING_MUTE_RESP"

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneUtils"

.field private static final PHONE_STATE_CHANGED:I = -0x1

.field private static final QUERY_TOKEN:I = -0x1

.field private static final SCREEN_SIZE_MAP:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/PhoneUtils$ScreenSize;",
            ">;"
        }
    .end annotation
.end field

.field static final SEL_HDMI:Ljava/lang/String; = "hdmi"

.field static final SEL_HDMI_INCOMING_CALL:Ljava/lang/String; = "hdmi_incoming_call"

.field private static final STARTWITH_SERVICE_NUMBER:Ljava/lang/String; = "startwith_Service_Number"

.field private static final STOP_TONE:I = 0x1

.field private static final TONE_LENGTH_MS:I = 0x96

.field private static final TONE_RELATIVE_VOLUME:I = 0x50

.field static final VAL_IGNORE:Ljava/lang/String; = "ignore"

.field static final VAL_ON:Ljava/lang/String; = "on"

.field static final VIDEOPLAYER_PACKAGE:Ljava/lang/String; = "com.motorola.videoplayer"

.field static final VzwLocalBothCallForwardDeactivateNo:Ljava/lang/String; = "*73"

.field static final VzwLocalCallForwardActivateNo:Ljava/lang/String; = "*72"

.field static final VzwLocalCallForwardBusyActivateNo:Ljava/lang/String; = "*71"

.field static final VzwLocalCallerIdBlockNo:Ljava/lang/String; = "*67"

.field static final VzwLocalCallerIdUnblockNo:Ljava/lang/String; = "*82"

.field static final VzwLocalVoiceMailNo:Ljava/lang/String; = "*86"

.field private static bConvertNumberEnabled:Z = false

.field private static convertNumberEnabled:I = 0x0

.field public static isManipulated:Z = false

.field private static mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler; = null

.field static mMMIDialog:Landroid/app/AlertDialog; = null

.field private static mMmiTimeoutCbMsg:Landroid/os/Message; = null

.field private static mNwService:Lcom/android/internal/telephony/IExtendedNetworkService; = null

.field private static mRestoreBTAudio:Z = false

.field static sCallerInfoQueryListener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener; = null

.field private static sConnectionMuteTable:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsSpeakerEnabled:Z = false

.field private static sLibCameraLocked:Z = false

.field static final validCompareLength:I = 0x3

.field static final vzwConverBackServiceNoMap:Ljava/util/HashMap;

.field static final vzwFilterServiceNoMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v7, "#646"

    const-string v6, "#3282"

    const-string v5, "#225"

    .line 99
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    .line 123
    sput-boolean v3, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 125
    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mRestoreBTAudio:Z

    .line 127
    sput-boolean v3, Lcom/android/phone/PhoneUtils;->sLibCameraLocked:Z

    .line 130
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    .line 151
    sput-object v4, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 153
    sput-object v4, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 177
    sput-boolean v3, Lcom/android/phone/PhoneUtils;->bConvertNumberEnabled:Z

    .line 178
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/PhoneUtils;->convertNumberEnabled:I

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->vzwFilterServiceNoMap:Ljava/util/HashMap;

    .line 194
    sget-object v0, Lcom/android/phone/PhoneUtils;->vzwFilterServiceNoMap:Ljava/util/HashMap;

    const-string v1, "*611"

    const-string v2, "+19085594899"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/phone/PhoneUtils;->vzwFilterServiceNoMap:Ljava/util/HashMap;

    const-string v1, "#225"

    const-string v1, "+18006142000"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/android/phone/PhoneUtils;->vzwFilterServiceNoMap:Ljava/util/HashMap;

    const-string v1, "#3282"

    const-string v1, "+18887829687"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/phone/PhoneUtils;->vzwFilterServiceNoMap:Ljava/util/HashMap;

    const-string v1, "#646"

    const-string v1, "+18005142001"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/phone/PhoneUtils;->vzwFilterServiceNoMap:Ljava/util/HashMap;

    const-string v1, "#768"

    const-string v2, "+18002491001"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->vzwConverBackServiceNoMap:Ljava/util/HashMap;

    .line 204
    sget-object v0, Lcom/android/phone/PhoneUtils;->vzwConverBackServiceNoMap:Ljava/util/HashMap;

    const-string v1, "18006142000"

    const-string v2, "#225"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/android/phone/PhoneUtils;->vzwConverBackServiceNoMap:Ljava/util/HashMap;

    const-string v1, "18887829687"

    const-string v2, "#3282"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/phone/PhoneUtils;->vzwConverBackServiceNoMap:Ljava/util/HashMap;

    const-string v1, "18005142001"

    const-string v2, "#646"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/phone/PhoneUtils;->vzwConverBackServiceNoMap:Ljava/util/HashMap;

    const-string v1, "18002491001"

    const-string v2, "#768"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sput-boolean v3, Lcom/android/phone/PhoneUtils;->isManipulated:Z

    .line 236
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->SCREEN_SIZE_MAP:Ljava/util/Hashtable;

    .line 240
    sget-object v0, Lcom/android/phone/PhoneUtils;->SCREEN_SIZE_MAP:Ljava/util/Hashtable;

    const v1, 0x12c00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils$ScreenSize;->QVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/android/phone/PhoneUtils;->SCREEN_SIZE_MAP:Ljava/util/Hashtable;

    const v1, 0x17700

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils$ScreenSize;->QVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/android/phone/PhoneUtils;->SCREEN_SIZE_MAP:Ljava/util/Hashtable;

    const v1, 0x19500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils$ScreenSize;->QVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/android/phone/PhoneUtils;->SCREEN_SIZE_MAP:Ljava/util/Hashtable;

    const v1, 0x25800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils$ScreenSize;->HVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/android/phone/PhoneUtils;->SCREEN_SIZE_MAP:Ljava/util/Hashtable;

    const v1, 0x5dc00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils$ScreenSize;->WVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/android/phone/PhoneUtils;->SCREEN_SIZE_MAP:Ljava/util/Hashtable;

    const v1, 0x64140

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils$ScreenSize;->WVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sput-object v4, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    .line 340
    new-instance v0, Lcom/android/phone/PhoneUtils$1;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$1;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    .line 1835
    new-instance v0, Lcom/android/phone/PhoneUtils$6;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$6;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    return-void
.end method

.method public static ConvertBackDialingNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "inputDialingNumber"

    .prologue
    const-string v7, "unknown"

    .line 4016
    move-object v1, p0

    .line 4017
    .local v1, dialingNumber:Ljava/lang/String;
    const/4 v4, 0x0

    .line 4020
    .local v4, outputConvertNumber:Ljava/lang/String;
    sget-object v5, Lcom/android/phone/PhoneUtils;->vzwConverBackServiceNoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, numberitr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4021
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4022
    .local v2, keyValue:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4023
    sget-object v5, Lcom/android/phone/PhoneUtils;->vzwConverBackServiceNoMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4032
    .end local v2           #keyValue:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 4026
    :cond_1
    const-string v5, "persist.radio.vzw.cdma.mdn"

    const-string v6, "unknown"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4027
    .local v0, cdmaMDN:Ljava/lang/String;
    const-string v5, "unknown"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4028
    const-string v4, "*86"

    :goto_1
    move-object v5, v4

    .line 4032
    goto :goto_0

    .line 4030
    :cond_2
    move-object v4, v1

    goto :goto_1
.end method

.method public static RemoveHyphen(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "Number"

    .prologue
    .line 4262
    const-string v0, ""

    .line 4264
    .local v0, PlainNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4265
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    .line 4266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4264
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4270
    :cond_1
    return-object v0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/IExtendedNetworkService;)Lcom/android/internal/telephony/IExtendedNetworkService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    sput-object p0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    return-object p0
.end method

.method static answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "cm"
    .parameter "ringing"

    .prologue
    .line 634
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "answerAndEndActive()..."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 645
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    const-string v0, "PhoneUtils"

    const-string v1, "end active call failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v0, 0x0

    .line 660
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static answerAndEndHolding(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "cm"
    .parameter "ringing"

    .prologue
    .line 622
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "end holding & answer waiting: 1"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 624
    const-string v0, "PhoneUtils"

    const-string v1, "end holding failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v0, 0x0

    .line 629
    :goto_0
    return v0

    .line 628
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "end holding & answer waiting: 2"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 629
    :cond_2
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0
.end method

.method static answerCall(Lcom/android/internal/telephony/Call;)Z
    .locals 11
    .parameter "ringing"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 384
    sget-boolean v7, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "answerCall()..."

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 388
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/Ringer;->stopRing()V

    .line 391
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v4, v7, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 392
    .local v4, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, answered:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 397
    .local v1, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 398
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    move v6, v9

    .line 399
    .local v6, phoneIsCdma:Z
    :goto_0
    const/4 v2, 0x0

    .line 401
    .local v2, bthf:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v6, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_1

    .line 405
    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 409
    :cond_1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 410
    sget-boolean v7, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "answerCall: call state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 412
    :cond_2
    if-eqz v6, :cond_3

    :try_start_0
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v7, :cond_3

    .line 413
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_6

    .line 417
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v7, v8}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 443
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;)V

    .line 444
    const/4 v0, 0x1

    .line 447
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 449
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 466
    :cond_4
    :goto_2
    return v0

    .end local v2           #bthf:Lcom/android/phone/BluetoothHandsfree;
    .end local v6           #phoneIsCdma:Z
    :cond_5
    move v6, v10

    .line 398
    goto :goto_0

    .line 422
    .restart local v2       #bthf:Lcom/android/phone/BluetoothHandsfree;
    .restart local v6       #phoneIsCdma:Z
    :cond_6
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v7, v8}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 429
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 435
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    .line 436
    if-eqz v2, :cond_3

    .line 437
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 453
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 454
    .local v3, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "answerCall: caught "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    if-eqz v6, :cond_4

    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v7, :cond_4

    .line 458
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iget-object v8, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 460
    if-eqz v2, :cond_4

    .line 461
    invoke-virtual {v2, v10}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    goto :goto_2
.end method

.method private static audioModeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 2280
    packed-switch p0, :pswitch_data_0

    .line 2286
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2281
    :pswitch_0
    const-string v0, "MODE_INVALID"

    goto :goto_0

    .line 2282
    :pswitch_1
    const-string v0, "MODE_CURRENT"

    goto :goto_0

    .line 2283
    :pswitch_2
    const-string v0, "MODE_NORMAL"

    goto :goto_0

    .line 2284
    :pswitch_3
    const-string v0, "MODE_RINGTONE"

    goto :goto_0

    .line 2285
    :pswitch_4
    const-string v0, "MODE_IN_CALL"

    goto :goto_0

    .line 2280
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v7, 0x0

    .line 1481
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v4

    .line 1482
    .local v4, pendingMmis:Ljava/util/List;,"Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 1483
    .local v1, count:I
    sget-boolean v5, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelMmiCode: num pending MMIs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1485
    :cond_0
    const/4 v0, 0x0

    .line 1486
    .local v0, canceled:Z
    if-lez v1, :cond_1

    .line 1491
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MmiCode;

    .line 1492
    .local v3, mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1493
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 1494
    const/4 v0, 0x1

    .line 1499
    .end local v3           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    :cond_1
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v5, :cond_2

    .line 1501
    :try_start_0
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v5}, Lcom/android/internal/telephony/IExtendedNetworkService;->clearMmiString()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1506
    :cond_2
    :goto_0
    sget-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    if-eqz v5, :cond_3

    .line 1507
    sput-object v7, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 1509
    :cond_3
    return v0

    .line 1502
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1503
    .local v2, e:Landroid/os/RemoteException;
    sput-object v7, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    goto :goto_0
.end method

.method static checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3
    .parameter "src"
    .parameter "dst"

    .prologue
    const-string v2, "com.android.phone.extra.GATEWAY_URI"

    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    .line 2866
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2867
    const-string v0, "PhoneUtils"

    const-string v1, "checkAndCopyPhoneProviderExtras: some or all extras are missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    :goto_0
    return-void

    .line 2871
    :cond_0
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2873
    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static checkCnapSpecialCases(Ljava/lang/String;)I
    .locals 2
    .parameter "n"

    .prologue
    .line 2710
    const-string v0, "PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2713
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCnapSpecialCases, PRIVATE string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2714
    :cond_1
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    .line 2723
    :goto_0
    return v0

    .line 2715
    :cond_2
    const-string v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2719
    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCnapSpecialCases, UNKNOWN string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2720
    :cond_4
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    goto :goto_0

    .line 2722
    :cond_5
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCnapSpecialCases, normal str. number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2723
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static checkEmergencyCallByCons(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3503
    .local p0, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz p0, :cond_1

    .line 3504
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 3505
    .local v3, n:I
    if-lez v3, :cond_1

    .line 3506
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 3507
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3508
    .local v0, con:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 3509
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 3510
    .local v4, number:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 3511
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 3512
    .local v2, isEmergencyNumber:Z
    if-eqz v2, :cond_0

    .line 3513
    const/4 v5, 0x1

    .line 3520
    .end local v0           #con:Lcom/android/internal/telephony/Connection;
    .end local v1           #i:I
    .end local v2           #isEmergencyNumber:Z
    .end local v3           #n:I
    .end local v4           #number:Ljava/lang/String;
    :goto_1
    return v5

    .line 3506
    .restart local v0       #con:Lcom/android/internal/telephony/Connection;
    .restart local v1       #i:I
    .restart local v3       #n:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3520
    .end local v0           #con:Lcom/android/internal/telephony/Connection;
    .end local v1           #i:I
    .end local v3           #n:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static checkIncomingCallForHDMI(Lcom/android/internal/telephony/Phone;)I
    .locals 12
    .parameter "phone"

    .prologue
    .line 2731
    const-string v0, "content://com.motorola.provider.hdmi_status/hdmi_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2734
    .local v1, ur:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 2736
    .local v2, ret:I
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2737
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    .line 2739
    .local v11, taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v11, :cond_0

    move p0, v2

    .line 2782
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #ur:Landroid/net/Uri;
    .end local v2           #ret:I
    .end local p0
    :goto_0
    return p0

    .line 2743
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #ur:Landroid/net/Uri;
    .restart local v2       #ret:I
    .restart local p0
    :cond_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 2745
    .local v10, size:I
    const-string v3, "name=\'hdmi\'"

    .line 2747
    .local v3, selection:Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .end local v0           #am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v2           #ret:I
    move-result-object v2

    .line 2750
    .local v2, cur_conn:Landroid/database/Cursor;
    if-eqz v2, :cond_4

    .line 2751
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 2752
    .end local v3           #selection:Ljava/lang/String;
    const-string v0, "value"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2753
    .local v0, conn_value:Ljava/lang/String;
    const-string v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #conn_value:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2754
    const-string v7, "name=\'hdmi_incoming_call\'"

    .line 2756
    .local v7, sel_ignore:Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 2759
    .local p0, cur_ignore:Landroid/database/Cursor;
    if-eqz p0, :cond_1

    .line 2760
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2761
    .end local v1           #ur:Landroid/net/Uri;
    const-string v0, "value"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2762
    .local v0, ignore_value:Ljava/lang/String;
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2764
    const-string p0, "ignore"

    .end local p0           #cur_ignore:Landroid/database/Cursor;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2765
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2766
    const/4 p0, 0x1

    goto :goto_0

    .line 2771
    .end local v0           #ignore_value:Ljava/lang/String;
    :cond_1
    if-lez v10, :cond_2

    const/4 p0, 0x0

    invoke-interface {v11, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.motorola.videoplayer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2772
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2773
    const/4 p0, 0x3

    goto/16 :goto_0

    .line 2776
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2777
    const/4 p0, 0x2

    goto/16 :goto_0

    .line 2780
    .end local v7           #sel_ignore:Ljava/lang/String;
    .restart local v1       #ur:Landroid/net/Uri;
    .local p0, phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2782
    :cond_4
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method static dismissUssdDialog()V
    .locals 1

    .prologue
    .line 1465
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1466
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1467
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    .line 1469
    :cond_0
    return-void
.end method

.method static displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
    .locals 7
    .parameter "phone"
    .parameter "context"
    .parameter "mmiCode"
    .parameter "dismissCallbackMessage"
    .parameter "previousAlert"

    .prologue
    .line 1157
    const/4 v3, 0x0

    .line 1158
    .local v3, text:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 1159
    .local v4, title:I
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    .line 1161
    .local v2, state:Lcom/android/internal/telephony/MmiCode$State;
    sget-boolean p3, Lcom/android/phone/PhoneUtils;->DBG:Z

    .end local p3
    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "displayMMIComplete: state="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1163
    :cond_0
    sget-object p3, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    if-eqz p3, :cond_2

    .line 1165
    :try_start_0
    sget-object p3, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual {p3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p3

    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1166
    sget-boolean p3, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz p3, :cond_1

    const-string p3, "Extended NW displayMMIComplete removeMsg"

    invoke-static {p3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1169
    :cond_1
    :goto_0
    const/4 p3, 0x0

    sput-object p3, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 1172
    :cond_2
    const/4 p3, 0x0

    .line 1173
    .local p3, data:[B
    const/4 v0, 0x0

    .line 1174
    .local v0, mmiString:Ljava/lang/CharSequence;
    sget-object v1, Lcom/android/phone/PhoneUtils$8;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    .line 1234
    new-instance p0, Ljava/lang/IllegalStateException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected MmiCode state: "

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1177
    .restart local p0
    .restart local p1
    .restart local p2
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x10d002e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1178
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1179
    .end local v0           #mmiString:Ljava/lang/CharSequence;
    .local v1, mmiString:Ljava/lang/CharSequence;
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- using text from PENDING MMI message: \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1181
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p3

    .line 1182
    if-nez p3, :cond_7

    .line 1183
    move-object v0, v1

    .end local v3           #text:Ljava/lang/CharSequence;
    .local v0, text:Ljava/lang/CharSequence;
    :goto_1
    move v3, v4

    .end local v4           #title:I
    .local v3, title:I
    move-object v6, v1

    .end local v1           #mmiString:Ljava/lang/CharSequence;
    .local v6, mmiString:Ljava/lang/CharSequence;
    move-object v1, v0

    .end local v0           #text:Ljava/lang/CharSequence;
    .local v1, text:Ljava/lang/CharSequence;
    move-object v0, v6

    .line 1237
    .end local v6           #mmiString:Ljava/lang/CharSequence;
    .local v0, mmiString:Ljava/lang/CharSequence;
    :goto_2
    if-eqz p4, :cond_4

    .line 1238
    invoke-virtual {p4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1243
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object p3

    .line 1244
    .local p3, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p3}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object p4

    .end local p4
    if-eqz p4, :cond_d

    sget-object p4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v2, p4, :cond_d

    .line 1245
    sget-boolean p0, Lcom/android/phone/PhoneUtils;->DBG:Z

    .end local p0
    if-eqz p0, :cond_5

    const-string p0, "displaying PUK unblocking progress dialog."

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1249
    :cond_5
    new-instance p0, Landroid/app/ProgressDialog;

    invoke-direct {p0, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1250
    .local p0, pd:Landroid/app/ProgressDialog;
    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1251
    invoke-virtual {p0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1252
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1253
    .end local p1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1254
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d8

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 1255
    .end local p2
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 1258
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    .line 1262
    invoke-virtual {p3, p0}, Lcom/android/phone/PhoneApp;->setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V

    move-object p0, v1

    .line 1434
    .end local v0           #mmiString:Ljava/lang/CharSequence;
    .end local v1           #text:Ljava/lang/CharSequence;
    .end local p3           #app:Lcom/android/phone/PhoneApp;
    .local p0, text:Ljava/lang/CharSequence;
    :cond_6
    :goto_3
    return-void

    .line 1186
    .local v1, mmiString:Ljava/lang/CharSequence;
    .local v3, text:Ljava/lang/CharSequence;
    .restart local v4       #title:I
    .local p0, phone:Lcom/android/internal/telephony/Phone;
    .restart local p1
    .restart local p2
    .local p3, data:[B
    .restart local p4
    :cond_7
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string v5, "UTF_16"

    invoke-direct {v0, p3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v3           #text:Ljava/lang/CharSequence;
    .local v0, text:Ljava/lang/CharSequence;
    goto :goto_1

    .line 1189
    .end local v0           #text:Ljava/lang/CharSequence;
    .restart local v3       #text:Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 1190
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v0, "UnsupportedEncodingException caught !!!"

    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v0, v1

    .end local v1           #mmiString:Ljava/lang/CharSequence;
    .local v0, mmiString:Ljava/lang/CharSequence;
    move-object v1, v3

    .end local v3           #text:Ljava/lang/CharSequence;
    .local v1, text:Ljava/lang/CharSequence;
    move v3, v4

    .line 1191
    .end local v4           #title:I
    .local v3, title:I
    goto :goto_2

    .line 1194
    .end local v1           #text:Ljava/lang/CharSequence;
    .local v3, text:Ljava/lang/CharSequence;
    .restart local v4       #title:I
    :cond_8
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .end local v3           #text:Ljava/lang/CharSequence;
    .restart local v1       #text:Ljava/lang/CharSequence;
    move v3, v4

    .line 1196
    .end local v4           #title:I
    .local v3, title:I
    goto :goto_2

    .line 1198
    .end local v1           #text:Ljava/lang/CharSequence;
    .local v3, text:Ljava/lang/CharSequence;
    .restart local v4       #title:I
    :pswitch_1
    const v1, 0x7f0b015c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v3           #text:Ljava/lang/CharSequence;
    .restart local v1       #text:Ljava/lang/CharSequence;
    move v3, v4

    .line 1199
    .end local v4           #title:I
    .local v3, title:I
    goto :goto_2

    .line 1201
    .end local v1           #text:Ljava/lang/CharSequence;
    .local v3, text:Ljava/lang/CharSequence;
    .restart local v4       #title:I
    :pswitch_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1204
    const v3, 0x10400e0

    .line 1205
    .end local v4           #title:I
    .local v3, title:I
    const v1, 0x7f0b01bb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1206
    .restart local v1       #text:Ljava/lang/CharSequence;
    goto :goto_2

    .line 1213
    .end local v1           #text:Ljava/lang/CharSequence;
    .local v3, text:Ljava/lang/CharSequence;
    .restart local v4       #title:I
    :cond_9
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x10d002e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1214
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1215
    .end local v0           #mmiString:Ljava/lang/CharSequence;
    .local v1, mmiString:Ljava/lang/CharSequence;
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- using text from PENDING MMI message: \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1217
    :cond_a
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p3

    .line 1218
    if-nez p3, :cond_b

    .line 1219
    move-object v0, v1

    .end local v3           #text:Ljava/lang/CharSequence;
    .local v0, text:Ljava/lang/CharSequence;
    :goto_4
    move v3, v4

    .end local v4           #title:I
    .local v3, title:I
    move-object v6, v1

    .end local v1           #mmiString:Ljava/lang/CharSequence;
    .restart local v6       #mmiString:Ljava/lang/CharSequence;
    move-object v1, v0

    .end local v0           #text:Ljava/lang/CharSequence;
    .local v1, text:Ljava/lang/CharSequence;
    move-object v0, v6

    .line 1227
    .end local v6           #mmiString:Ljava/lang/CharSequence;
    .local v0, mmiString:Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1222
    .end local v0           #mmiString:Ljava/lang/CharSequence;
    .local v1, mmiString:Ljava/lang/CharSequence;
    .local v3, text:Ljava/lang/CharSequence;
    .restart local v4       #title:I
    :cond_b
    new-instance v0, Ljava/lang/String;

    const-string v5, "UTF_16"

    invoke-direct {v0, p3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v3           #text:Ljava/lang/CharSequence;
    .local v0, text:Ljava/lang/CharSequence;
    goto :goto_4

    .line 1225
    .end local v0           #text:Ljava/lang/CharSequence;
    .restart local v3       #text:Ljava/lang/CharSequence;
    :catch_1
    move-exception v0

    .line 1226
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v0, "UnsupportedEncodingException caught !!!"

    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v0, v1

    .end local v1           #mmiString:Ljava/lang/CharSequence;
    .local v0, mmiString:Ljava/lang/CharSequence;
    move-object v1, v3

    .end local v3           #text:Ljava/lang/CharSequence;
    .local v1, text:Ljava/lang/CharSequence;
    move v3, v4

    .line 1227
    .end local v4           #title:I
    .local v3, title:I
    goto/16 :goto_2

    .line 1230
    .end local v1           #text:Ljava/lang/CharSequence;
    .local v3, text:Ljava/lang/CharSequence;
    .restart local v4       #title:I
    :cond_c
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .end local v3           #text:Ljava/lang/CharSequence;
    .restart local v1       #text:Ljava/lang/CharSequence;
    move v3, v4

    .line 1232
    .end local v4           #title:I
    .local v3, title:I
    goto/16 :goto_2

    .line 1267
    .end local p4
    .local p3, app:Lcom/android/phone/PhoneApp;
    :cond_d
    invoke-virtual {p3}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object p4

    if-eqz p4, :cond_e

    .line 1268
    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/android/phone/PhoneApp;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 1273
    :cond_e
    sget-object p4, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v2, p4, :cond_12

    .line 1274
    sget-boolean p0, Lcom/android/phone/PhoneUtils;->DBG:Z

    .end local p0           #phone:Lcom/android/internal/telephony/Phone;
    if-eqz p0, :cond_f

    const-string p0, "MMI code has finished running."

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1277
    :cond_f
    sget-object p0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz p0, :cond_14

    .line 1279
    :try_start_4
    sget-object p0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {p0, v1}, Lcom/android/internal/telephony/IExtendedNetworkService;->getUserMessage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object p0

    .line 1283
    .end local v1           #text:Ljava/lang/CharSequence;
    .local p0, text:Ljava/lang/CharSequence;
    :goto_5
    sget-boolean p2, Lcom/android/phone/PhoneUtils;->DBG:Z

    .end local p2
    if-eqz p2, :cond_10

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Extended NW displayMMIInitiate ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ")"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1284
    :cond_10
    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-eqz p2, :cond_6

    move-object p2, p0

    .line 1289
    .end local p0           #text:Ljava/lang/CharSequence;
    .local p2, text:Ljava/lang/CharSequence;
    :goto_6
    sget-object p0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v2, p0, :cond_11

    move-object p0, p2

    .line 1290
    .end local p2           #text:Ljava/lang/CharSequence;
    .restart local p0       #text:Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 1280
    .end local p0           #text:Ljava/lang/CharSequence;
    .restart local v1       #text:Ljava/lang/CharSequence;
    .local p2, mmiCode:Lcom/android/internal/telephony/MmiCode;
    :catch_2
    move-exception p0

    .line 1281
    .local p0, e:Landroid/os/RemoteException;
    const/4 p0, 0x0

    sput-object p0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .end local p0           #e:Landroid/os/RemoteException;
    move-object p0, v1

    .end local v1           #text:Ljava/lang/CharSequence;
    .local p0, text:Ljava/lang/CharSequence;
    goto :goto_5

    .line 1294
    .end local p0           #text:Ljava/lang/CharSequence;
    .local p2, text:Ljava/lang/CharSequence;
    :cond_11
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dismissUssdDialog()V

    .line 1299
    new-instance p0, Lcom/android/phone/PhoneUtils$MMIDialogListener;

    invoke-direct {p0}, Lcom/android/phone/PhoneUtils$MMIDialogListener;-><init>()V

    .line 1300
    .local p0, listener:Lcom/android/phone/PhoneUtils$MMIDialogListener;
    new-instance p4, Landroid/app/AlertDialog$Builder;

    invoke-direct {p4, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f0b0362

    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .end local p3           #app:Lcom/android/phone/PhoneApp;
    move-result-object p3

    const p4, 0x108009b

    invoke-virtual {p3, p4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    const p4, 0x7f0b016e

    invoke-virtual {p3, p4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p3

    sput-object p3, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    .line 1308
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->playTone(Landroid/content/Context;)V

    .line 1309
    sget-object p1, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1310
    sget-object p0, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    .end local p0           #listener:Lcom/android/phone/PhoneUtils$MMIDialogListener;
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7d8

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    .line 1312
    sget-object p0, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 1315
    sget-object p0, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    move-object p0, p2

    .line 1316
    .end local p2           #text:Ljava/lang/CharSequence;
    .local p0, text:Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 1317
    .restart local v1       #text:Ljava/lang/CharSequence;
    .local p0, phone:Lcom/android/internal/telephony/Phone;
    .restart local p1
    .local p2, mmiCode:Lcom/android/internal/telephony/MmiCode;
    .restart local p3       #app:Lcom/android/phone/PhoneApp;
    :cond_12
    sget-boolean p3, Lcom/android/phone/PhoneUtils;->DBG:Z

    .end local p3           #app:Lcom/android/phone/PhoneApp;
    if-eqz p3, :cond_13

    const-string p3, "USSD code has requested user input. Constructing input dialog."

    invoke-static {p3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1342
    :cond_13
    const-string p3, "layout_inflater"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 1344
    .local p3, inflater:Landroid/view/LayoutInflater;
    const p4, 0x7f03001c

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .end local v0           #mmiString:Ljava/lang/CharSequence;
    move-result-object p3

    .line 1347
    .local p3, dialogView:Landroid/view/View;
    const p4, 0x7f070095

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/EditText;

    .line 1350
    .local p4, inputText:Landroid/widget/EditText;
    new-instance v0, Lcom/android/phone/PhoneUtils$3;

    invoke-direct {v0, p0, p4, p2}, Lcom/android/phone/PhoneUtils$3;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Lcom/android/internal/telephony/MmiCode;)V

    .line 1366
    .local v0, mUSSDDialogListener:Landroid/content/DialogInterface$OnClickListener;
    const p2, 0x7f070094

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .end local p2           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1367
    .local p2, ussdText:Landroid/widget/TextView;
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dismissUssdDialog()V

    .line 1374
    new-instance p2, Landroid/app/AlertDialog$Builder;

    .end local p2           #ussdText:Landroid/widget/TextView;
    invoke-direct {p2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f0b0174

    invoke-virtual {p2, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .end local p3           #dialogView:Landroid/view/View;
    move-result-object p2

    const p3, 0x7f0b015d

    invoke-virtual {p2, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string p3, "182"

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    sput-object p2, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    .line 1384
    new-instance p2, Lcom/android/phone/PhoneUtils$4;

    invoke-direct {p2, p0, p4}, Lcom/android/phone/PhoneUtils$4;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;)V

    .line 1397
    .local p2, mUSSDDialogInputListener:Landroid/view/View$OnKeyListener;
    invoke-virtual {p4, p2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1398
    invoke-virtual {p4}, Landroid/widget/EditText;->requestFocus()Z

    .line 1402
    new-instance p0, Lcom/android/phone/PhoneUtils$5;

    .end local p0           #phone:Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, p4}, Lcom/android/phone/PhoneUtils$5;-><init>(Landroid/widget/EditText;)V

    .line 1419
    .local p0, textWatcher:Landroid/text/TextWatcher;
    invoke-virtual {p4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1421
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->playTone(Landroid/content/Context;)V

    .line 1425
    sget-object p0, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    .end local p0           #textWatcher:Landroid/text/TextWatcher;
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7d8

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    .line 1427
    .end local p1
    sget-object p0, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 1431
    sget-object p0, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    move-object p0, v1

    .end local v1           #text:Ljava/lang/CharSequence;
    .local p0, text:Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 1167
    .end local v0           #mUSSDDialogListener:Landroid/content/DialogInterface$OnClickListener;
    .local v3, text:Ljava/lang/CharSequence;
    .restart local v4       #title:I
    .local p0, phone:Lcom/android/internal/telephony/Phone;
    .restart local p1
    .local p2, mmiCode:Lcom/android/internal/telephony/MmiCode;
    .local p4, previousAlert:Landroid/app/AlertDialog;
    :catch_3
    move-exception p3

    goto/16 :goto_0

    .end local v4           #title:I
    .end local p0           #phone:Lcom/android/internal/telephony/Phone;
    .end local p4           #previousAlert:Landroid/app/AlertDialog;
    .local v0, mmiString:Ljava/lang/CharSequence;
    .restart local v1       #text:Ljava/lang/CharSequence;
    .local v3, title:I
    .local p3, app:Lcom/android/phone/PhoneApp;
    :cond_14
    move-object p2, v1

    .end local v1           #text:Ljava/lang/CharSequence;
    .local p2, text:Ljava/lang/CharSequence;
    goto/16 :goto_6

    .line 1174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 12
    .parameter "context"
    .parameter "mmiCode"
    .parameter "buttonCallbackMessage"
    .parameter "previousAlert"

    .prologue
    const v11, 0x7f0b015b

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1000
    sget-boolean v5, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayMMIInitiate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1001
    :cond_0
    if-eqz p3, :cond_1

    .line 1002
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 1034
    :cond_1
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v5, :cond_4

    .line 1035
    sget-boolean v5, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "running USSD code, displaying indeterminate progress."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1037
    :cond_2
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1038
    .local v2, pd:Landroid/app/ProgressDialog;
    const-string v4, ""

    .line 1040
    .local v4, textmsg:Ljava/lang/CharSequence;
    :try_start_0
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v5}, Lcom/android/internal/telephony/IExtendedNetworkService;->getMmiRunningText()Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1046
    :goto_0
    sget-boolean v5, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extended NW displayMMIInitiate ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1047
    :cond_3
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1048
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1049
    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1050
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->addFlags(I)V

    .line 1051
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1052
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 1054
    sput-object p2, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 1056
    :try_start_1
    sget-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x3a98

    invoke-virtual {v5, p2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v5, v2

    .line 1083
    .end local v2           #pd:Landroid/app/ProgressDialog;
    .end local v4           #textmsg:Ljava/lang/CharSequence;
    :goto_2
    return-object v5

    .line 1042
    .restart local v2       #pd:Landroid/app/ProgressDialog;
    .restart local v4       #textmsg:Ljava/lang/CharSequence;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1043
    .local v0, e:Landroid/os/RemoteException;
    sput-object v9, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 1044
    invoke-virtual {p0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 1057
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 1058
    .local v0, e:Ljava/lang/NullPointerException;
    sput-object v9, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    goto :goto_1

    .line 1063
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #pd:Landroid/app/ProgressDialog;
    .end local v4           #textmsg:Ljava/lang/CharSequence;
    :cond_4
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v8

    .line 1065
    .local v1, isCancelable:Z
    :goto_3
    if-nez v1, :cond_7

    .line 1066
    sget-boolean v5, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "not a USSD code, displaying status toast."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1067
    :cond_5
    const v5, 0x7f0b015a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1068
    .local v3, text:Ljava/lang/CharSequence;
    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move-object v5, v9

    .line 1070
    goto :goto_2

    .end local v1           #isCancelable:Z
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_6
    move v1, v7

    .line 1063
    goto :goto_3

    .line 1072
    .restart local v1       #isCancelable:Z
    :cond_7
    sget-boolean v5, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "running USSD code, displaying indeterminate progress."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1075
    :cond_8
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1076
    .restart local v2       #pd:Landroid/app/ProgressDialog;
    invoke-virtual {p0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1077
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1078
    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1079
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->addFlags(I)V

    .line 1081
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    move-object v5, v2

    .line 1083
    goto :goto_2
.end method

.method static dumpCallManager()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const-string v11, "NO "

    const-string v10, "  Conn: "

    const-string v9, "  State: "

    const-string v7, "PhoneUtils"

    .line 3170
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v2, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3171
    .local v2, cm:Lcom/android/internal/telephony/CallManager;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3173
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v5, "PhoneUtils"

    const-string v5, "############### dumpCallManager() ##############"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    const-string v5, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallManager: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3177
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3178
    .local v1, call:Lcom/android/internal/telephony/Call;
    const-string v5, " - FG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "YES "

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3180
    const-string v5, "  State: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3181
    const-string v5, "  Conn: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3182
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3183
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3184
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3185
    const-string v5, " - BG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "YES "

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3187
    const-string v5, "  State: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3188
    const-string v5, "  Conn: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3189
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3191
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3192
    const-string v5, " - RINGING call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "YES "

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3194
    const-string v5, "  State: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3195
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 3198
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v4, :cond_0

    .line 3199
    const-string v5, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3202
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3203
    const-string v5, " - FG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3204
    const-string v5, "  State: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3205
    const-string v5, "  Conn: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3206
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3208
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3209
    const-string v5, " - BG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3210
    const-string v5, "  State: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3211
    const-string v5, "  Conn: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3212
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3213
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3214
    const-string v5, " - RINGING call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3215
    const-string v5, "  State: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3216
    const-string v5, "  Conn: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3217
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3178
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v6, "NO "

    move-object v6, v11

    goto/16 :goto_0

    .line 3185
    :cond_2
    const-string v6, "NO "

    move-object v6, v11

    goto/16 :goto_1

    .line 3192
    :cond_3
    const-string v6, "NO "

    move-object v6, v11

    goto/16 :goto_2

    .line 3221
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    const-string v5, "PhoneUtils"

    const-string v5, "############## END dumpCallManager() ###############"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    return-void
.end method

.method static dumpCallState()V
    .locals 12

    .prologue
    const-string v11, "PhoneUtils"

    .line 3067
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 3068
    .local v1, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3069
    .local v3, cm:Lcom/android/internal/telephony/CallManager;
    const-string v9, "PhoneUtils"

    const-string v9, "dumpCallState():"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    const-string v9, "PhoneUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- Call state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    const-string v10, "  - FG call: "

    invoke-static {v9, v10}, Lcom/android/phone/PhoneUtils;->dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 3073
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    const-string v10, "  - BG call: "

    invoke-static {v9, v10}, Lcom/android/phone/PhoneUtils;->dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 3074
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    const-string v10, "  - RINGING call: "

    invoke-static {v9, v10}, Lcom/android/phone/PhoneUtils;->dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 3076
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v6

    .line 3077
    .local v6, hasRingingCall:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    .line 3078
    .local v4, hasActiveCall:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    .line 3079
    .local v5, hasHoldingCall:Z
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    const/4 v9, 0x1

    move v0, v9

    .line 3080
    .local v0, allLinesTaken:Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v9, 0x80

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3081
    .local v2, b:Ljava/lang/StringBuilder;
    const-string v9, "  - hasRingingCall "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3082
    const-string v9, " hasActiveCall "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3083
    const-string v9, " hasHoldingCall "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3084
    const-string v9, " allLinesTaken "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3085
    const-string v9, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 3089
    .local v7, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 3090
    iget-object v9, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v9, :cond_2

    .line 3091
    const-string v9, "PhoneUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  - CDMA call state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v8

    .line 3102
    .local v8, ringing:Z
    const-string v9, "PhoneUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  - Ringer state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    return-void

    .line 3079
    .end local v0           #allLinesTaken:Z
    .end local v2           #b:Ljava/lang/StringBuilder;
    .end local v7           #phone:Lcom/android/internal/telephony/Phone;
    .end local v8           #ringing:Z
    :cond_1
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 3094
    .restart local v0       #allLinesTaken:Z
    .restart local v2       #b:Ljava/lang/StringBuilder;
    .restart local v7       #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    const-string v9, "PhoneUtils"

    const-string v9, "  - CDMA device, but null cdmaPhoneCallState!"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static dumpCallState(Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .parameter "phone"

    .prologue
    .line 3106
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 3107
    .local v1, app:Lcom/android/phone/PhoneApp;
    const-string v0, "PhoneUtils"

    const-string v2, "##### dumpCallState()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    const-string v0, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    const-string v0, "PhoneUtils"

    const-string v2, "-"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3113
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- FG call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  isAlive(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  isRinging(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  isDialing(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  isIdle(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- hasConnections: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    const-string v0, "PhoneUtils"

    const-string v2, "-"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3123
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- BG call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  isAlive(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  isRinging(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  isDialing(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  isIdle(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  hasConnections: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    .end local v0           #bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    const-string v0, "PhoneUtils"

    const-string v2, "-"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3133
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- RINGING call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  isAlive(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  isRinging(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  isDialing(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  isIdle(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-  hasConnections: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    .end local v0           #ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    const-string v0, "PhoneUtils"

    const-string v2, "-"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v4, v0

    .line 3143
    .local v4, hasRingingCall:Z
    :goto_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v2, v0

    .line 3144
    .local v2, hasActiveCall:Z
    :goto_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v3, v0

    .line 3145
    .local v3, hasHoldingCall:Z
    :goto_2
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    .line 3146
    .local v0, allLinesTaken:Z
    :goto_3
    const-string v5, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- hasRingingCall: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .end local v4           #hasRingingCall:Z
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    const-string v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- hasActiveCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #hasActiveCall:Z
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    const-string v2, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- hasHoldingCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #hasHoldingCall:Z
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- allLinesTaken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #allLinesTaken:Z
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    .end local p0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 3153
    iget-object p0, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz p0, :cond_5

    .line 3154
    const-string p0, "PhoneUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - CDMA call state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    :cond_0
    :goto_4
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result p0

    .line 3165
    .local p0, ringing:Z
    const-string v0, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #app:Lcom/android/phone/PhoneApp;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - Ringer state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ringing:Z
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    return-void

    .line 3142
    .restart local v1       #app:Lcom/android/phone/PhoneApp;
    .local p0, phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_0

    .line 3143
    .restart local v4       #hasRingingCall:Z
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_1

    .line 3144
    .restart local v2       #hasActiveCall:Z
    :cond_3
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_2

    .line 3145
    .restart local v3       #hasHoldingCall:Z
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 3157
    .end local v2           #hasActiveCall:Z
    .end local v3           #hasHoldingCall:Z
    .end local v4           #hasRingingCall:Z
    .end local p0           #phone:Lcom/android/internal/telephony/Phone;
    :cond_5
    const-string p0, "PhoneUtils"

    const-string v0, "  - CDMA device, but null cdmaPhoneCallState!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private static dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V
    .locals 3
    .parameter "call"
    .parameter "prefix"

    .prologue
    .line 3055
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3056
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3057
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3058
    const-string v1, " isAlive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3059
    const-string v1, " isRinging "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3060
    const-string v1, " isDialing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3061
    const-string v1, " isIdle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3062
    const-string v1, " hasConnections "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3063
    const-string v1, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    return-void
.end method

.method public static filteredDialingNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "inputDialingNumber"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "*82"

    const-string v5, "*67"

    .line 3995
    move-object v0, p0

    .line 3996
    .local v0, dialingNumber:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3997
    .local v2, outputDialingNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v1, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 3999
    .local v1, mPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    .line 4012
    :goto_0
    return-object v3

    .line 4001
    :cond_0
    const-string v3, "*86"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4002
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getRoamingVoiceMailNo()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v3, v2

    .line 4012
    goto :goto_0

    .line 4003
    :cond_1
    const-string v3, "*67"

    const-string v3, "*67"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v8, :cond_2

    .line 4004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#31#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*67"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 4005
    :cond_2
    const-string v3, "*82"

    const-string v3, "*82"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 4006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*31#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*82"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 4007
    :cond_3
    sget-object v3, Lcom/android/phone/PhoneUtils;->vzwFilterServiceNoMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4008
    sget-object v3, Lcom/android/phone/PhoneUtils;->vzwFilterServiceNoMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 4010
    :cond_4
    move-object v2, p0

    goto/16 :goto_1
.end method

.method static formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 2932
    if-eqz p0, :cond_1

    .line 2933
    const-string v0, "tel"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2934
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2939
    :goto_0
    return-object v0

    .line 2936
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2939
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getApSettings(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 3541
    const-string v1, "ap_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3544
    .local v0, vqPref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 3546
    const-string v1, "voice_quality"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3549
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method static getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1587
    const/4 v1, 0x0

    .line 1589
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    if-eqz p1, :cond_0

    .line 1593
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    .line 1594
    .local v3, userDataObject:Ljava/lang/Object;
    instance-of v4, v3, Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 1595
    check-cast v3, Landroid/net/Uri;

    .end local v3           #userDataObject:Ljava/lang/Object;
    invoke-static {p0, v3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 1596
    if-eqz v1, :cond_0

    .line 1597
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1623
    :cond_0
    :goto_0
    return-object v1

    .line 1600
    .restart local v3       #userDataObject:Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_3

    .line 1602
    check-cast v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v3           #userDataObject:Ljava/lang/Object;
    iget-object v1, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1607
    :goto_1
    if-nez v1, :cond_0

    .line 1610
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1612
    .local v2, number:Ljava/lang/String;
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallerInfo: number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1614
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1615
    invoke-static {p0, v2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 1616
    if-eqz v1, :cond_0

    .line 1617
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_0

    .line 1605
    .end local v2           #number:Ljava/lang/String;
    .restart local v3       #userDataObject:Ljava/lang/Object;
    :cond_3
    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v1, v0

    goto :goto_1
.end method

.method public static getCityIdDisplayStr(Landroid/widget/TextView;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 4
    .parameter "tv"
    .parameter "info"

    .prologue
    .line 3789
    const-string v1, ""

    .line 3791
    .local v1, strDisplay:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getCityIdInfo(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CityIdInfo;

    move-result-object v0

    .line 3792
    .local v0, cidInfo:Lcom/android/phone/CityIdInfo;
    if-eqz v0, :cond_0

    .line 3794
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/CityIdInfo;->computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v1

    .line 3796
    :cond_0
    return-object v1
.end method

.method private static getCityIdInfo(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CityIdInfo;
    .locals 2
    .parameter "info"

    .prologue
    .line 3778
    if-eqz p0, :cond_0

    .line 3780
    const-string v1, "com.cequint.cityidinfo"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCityIdInfoData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3781
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/phone/CityIdInfo;

    if-eqz v1, :cond_0

    .line 3782
    check-cast v0, Lcom/android/phone/CityIdInfo;

    .end local v0           #o:Ljava/lang/Object;
    move-object v1, v0

    .line 3784
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "ci"
    .parameter "context"

    .prologue
    .line 1914
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompactNameFromCallerInfo: info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1916
    :cond_0
    const/4 v0, 0x0

    .line 1917
    .local v0, compactName:Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 1918
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1919
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1920
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1924
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1925
    :cond_3
    const v1, 0x7f0b0138

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1927
    :cond_4
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompactNameFromCallerInfo: compactName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1928
    :cond_5
    return-object v0
.end method

.method static getDisconnectCauseResourceId(Lcom/android/internal/telephony/Connection;)I
    .locals 4
    .parameter "c"

    .prologue
    .line 3251
    if-nez p0, :cond_1

    .line 3252
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v2, :cond_0

    .line 3253
    const-string v2, "getDisconnectCauseResourceId: connection is null, using default values."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3256
    :cond_0
    const v1, 0x7f0b0300

    .line 3352
    .local v1, resID:I
    :goto_0
    return v1

    .line 3259
    .end local v1           #resID:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 3269
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v2, Lcom/android/phone/PhoneUtils$8;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 3348
    const v1, 0x7f0b0300

    .restart local v1       #resID:I
    goto :goto_0

    .line 3271
    .end local v1           #resID:I
    :pswitch_0
    const v1, 0x7f0b013f

    .line 3272
    .restart local v1       #resID:I
    goto :goto_0

    .line 3275
    .end local v1           #resID:I
    :pswitch_1
    const v1, 0x7f0b0140

    .line 3276
    .restart local v1       #resID:I
    goto :goto_0

    .line 3279
    .end local v1           #resID:I
    :pswitch_2
    const v1, 0x7f0b0141

    .line 3280
    .restart local v1       #resID:I
    goto :goto_0

    .line 3283
    .end local v1           #resID:I
    :pswitch_3
    const v1, 0x7f0b0142

    .line 3284
    .restart local v1       #resID:I
    goto :goto_0

    .line 3287
    .end local v1           #resID:I
    :pswitch_4
    const v1, 0x7f0b0143

    .line 3288
    .restart local v1       #resID:I
    goto :goto_0

    .line 3291
    .end local v1           #resID:I
    :pswitch_5
    const v1, 0x7f0b0144

    .line 3292
    .restart local v1       #resID:I
    goto :goto_0

    .line 3295
    .end local v1           #resID:I
    :pswitch_6
    const v1, 0x7f0b0146

    .line 3296
    .restart local v1       #resID:I
    goto :goto_0

    .line 3299
    .end local v1           #resID:I
    :pswitch_7
    const v1, 0x7f0b0145

    .line 3300
    .restart local v1       #resID:I
    goto :goto_0

    .line 3303
    .end local v1           #resID:I
    :pswitch_8
    const v1, 0x7f0b0148

    .line 3304
    .restart local v1       #resID:I
    goto :goto_0

    .line 3307
    .end local v1           #resID:I
    :pswitch_9
    const v1, 0x7f0b0149

    .line 3308
    .restart local v1       #resID:I
    goto :goto_0

    .line 3311
    .end local v1           #resID:I
    :pswitch_a
    const v1, 0x7f0b014a

    .line 3312
    .restart local v1       #resID:I
    goto :goto_0

    .line 3315
    .end local v1           #resID:I
    :pswitch_b
    const v1, 0x7f0b014c

    .line 3316
    .restart local v1       #resID:I
    goto :goto_0

    .line 3319
    .end local v1           #resID:I
    :pswitch_c
    const v1, 0x7f0b014b

    .line 3320
    .restart local v1       #resID:I
    goto :goto_0

    .line 3323
    .end local v1           #resID:I
    :pswitch_d
    const v1, 0x7f0b014e

    .line 3324
    .restart local v1       #resID:I
    goto :goto_0

    .line 3327
    .end local v1           #resID:I
    :pswitch_e
    const v1, 0x7f0b014d

    .line 3328
    .restart local v1       #resID:I
    goto :goto_0

    .line 3331
    .end local v1           #resID:I
    :pswitch_f
    const v1, 0x7f0b014f

    .line 3332
    .restart local v1       #resID:I
    goto :goto_0

    .line 3335
    .end local v1           #resID:I
    :pswitch_10
    const v1, 0x7f0b0150

    .line 3336
    .restart local v1       #resID:I
    goto :goto_0

    .line 3339
    .end local v1           #resID:I
    :pswitch_11
    const v1, 0x7f0b0151

    .line 3340
    .restart local v1       #resID:I
    goto :goto_0

    .line 3344
    .end local v1           #resID:I
    :pswitch_12
    const v1, 0x7f0b0147

    .line 3345
    .restart local v1       #resID:I
    goto :goto_0

    .line 3269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method private static getIncomingCallRestriction(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 3865
    const/4 v0, 0x0

    .line 3866
    .local v0, inCallRestriction:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v1, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 3867
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3868
    if-eqz p0, :cond_0

    .line 3869
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "incoming_call_restriction"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3874
    :cond_0
    return v0
.end method

.method public static getLastOutgoingNumber()Ljava/lang/String;
    .locals 11

    .prologue
    const-string v10, "number"

    .line 2522
    const-string v7, ""

    .line 2525
    .local v7, outgoingNum:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "number"

    aput-object v10, v2, v0

    .line 2529
    .local v2, CALL_LOG_PROJECTION:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "type"

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2530
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2531
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2532
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2533
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    .line 2534
    .local v8, phApp:Lcom/android/phone/PhoneApp;
    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2536
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 2537
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cursor count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2538
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2539
    const-string v0, "number"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2540
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recent outgoing call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2542
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2546
    :cond_3
    :goto_0
    return-object v7

    .line 2544
    :cond_4
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "No outgoing calls"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getManipulatedNumber(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "intent"
    .parameter "orgNumber"

    .prologue
    .line 4114
    move-object v3, p1

    .line 4115
    .local v3, maniNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v2, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 4117
    .local v2, mPhone:Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .line 4118
    .local v0, calledBy:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 4119
    const-string v5, "called_by"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4122
    :cond_0
    if-nez v0, :cond_7

    .line 4123
    const-string v0, "BY_CONTACT"

    .line 4124
    sget-boolean v5, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "33860 Assisted Dialing: calledBy Intent Extra is BY_CONTACT"

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4129
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->filteredDialingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4130
    sget-boolean v5, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PhoneUtis after convert , maniNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4131
    :cond_2
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->toAttmptNBPCD()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4133
    sget-boolean v5, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toAttmptNBPCD number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4134
    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/android/phone/AssistedDialingUtil;->assisted_dialing_origin_number:Ljava/lang/String;

    .line 4135
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/android/phone/AssistedDialingUtil;->assisted_dialing_dialed_by:Ljava/lang/String;

    .line 4137
    :cond_4
    new-instance v1, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;

    invoke-direct {v1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;-><init>()V

    .line 4139
    .local v1, fwNumberHandler:Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;
    invoke-virtual {v1, v3, v0}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->getManipulatedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4140
    .local v4, manipulatedNumber:Ljava/lang/String;
    sget-boolean v5, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Assisted Dialing: Manipulated Number is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4141
    :cond_5
    if-eqz v4, :cond_6

    .line 4142
    move-object v3, v4

    .line 4144
    :cond_6
    return-object v3

    .line 4126
    .end local v1           #fwNumberHandler:Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;
    .end local v4           #manipulatedNumber:Ljava/lang/String;
    :cond_7
    sget-boolean v5, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "Assisted Dialing: calledBy Intent Extra is BY_DIALER"

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static getMute()Z
    .locals 2

    .prologue
    .line 2250
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2251
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v1

    return v1
.end method

.method static getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 1547
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1548
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1552
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "sip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1553
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 1567
    :goto_0
    return-object v3

    .line 1559
    :cond_0
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1563
    .local v0, number:Ljava/lang/String;
    const-string v3, "voicemail"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1565
    :cond_1
    new-instance v3, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;-><init>()V

    throw v3

    :cond_2
    move-object v3, v0

    .line 1567
    goto :goto_0
.end method

.method static getOutgoingCallRestriction(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 3929
    const/4 v0, 0x0

    .line 3930
    .local v0, outgoingCallRestriction:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v1, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 3931
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3932
    if-eqz p0, :cond_0

    .line 3933
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "outgoing_call_restriction"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3938
    :cond_0
    return v0
.end method

.method static getPresentationString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "presentation"

    .prologue
    .line 2036
    const v1, 0x7f0b0138

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2037
    .local v0, name:Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 2038
    const v1, 0x7f0b0139

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2042
    :cond_0
    :goto_0
    return-object v0

    .line 2039
    :cond_1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 2040
    const v1, 0x7f0b013a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2
    .parameter "intent"

    .prologue
    .line 2920
    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2921
    .local v0, uri:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method static getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2904
    const-string v3, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2905
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2908
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2910
    :goto_0
    return-object v3

    .line 2909
    :catch_0
    move-exception v0

    .line 2910
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2885
    const-string v4, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2886
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2889
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2891
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2893
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v4

    .line 2892
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 2893
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static getRestoreBtAudio()Z
    .locals 1

    .prologue
    .line 2197
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mRestoreBTAudio:Z

    return v0
.end method

.method public static getRetryLeftSimPin(Landroid/os/AsyncResult;)I
    .locals 4
    .parameter "ar"

    .prologue
    .line 3448
    const/4 v2, 0x0

    .line 3452
    .local v2, numRetries:I
    if-eqz p0, :cond_0

    iget-object v3, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 3454
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, [I

    move-object v0, p0

    check-cast v0, [I

    move-object v1, v0

    .line 3456
    .local v1, int_array:[I
    array-length v3, v1

    if-lez v3, :cond_0

    .line 3458
    const/4 v3, 0x0

    aget v2, v1, v3

    .line 3461
    .end local v1           #int_array:[I
    :cond_0
    return v2
.end method

.method private static getRoamingVoiceMailNo()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "unknown"

    .line 4079
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+1"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4080
    .local v1, roamingVMNumber:Ljava/lang/StringBuilder;
    const-string v2, "persist.radio.vzw.cdma.mdn"

    const-string v3, "unknown"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4081
    .local v0, cdmaMDN:Ljava/lang/String;
    const-string v2, "unknown"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4082
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4085
    :goto_0
    return-object v2

    .line 4084
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4085
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static getScreenSize(Landroid/content/Context;)Lcom/android/phone/PhoneUtils$ScreenSize;
    .locals 5
    .parameter "context"

    .prologue
    .line 3611
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3612
    .local v1, x:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3614
    .local v2, y:I
    sget-object v3, Lcom/android/phone/PhoneUtils;->SCREEN_SIZE_MAP:Ljava/util/Hashtable;

    mul-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneUtils$ScreenSize;

    .line 3616
    .local v0, sz:Lcom/android/phone/PhoneUtils$ScreenSize;
    if-nez v0, :cond_0

    .line 3617
    sget-object v3, Lcom/android/phone/PhoneUtils$ScreenSize;->UNKNOWN:Lcom/android/phone/PhoneUtils$ScreenSize;

    .line 3619
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v0

    goto :goto_0
.end method

.method public static getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 6
    .parameter "cm"
    .parameter "target"

    .prologue
    .line 3031
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 3032
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 3033
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v3

    .line 3034
    .local v3, sipUri:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3035
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- pickPhoneBasedOnNumber:found SipPhone! obj = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    :cond_1
    move-object v4, v2

    .line 3042
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    .end local v3           #sipUri:Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "phone"
    .parameter "event"

    .prologue
    .line 2301
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHeadsetHook()..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2302
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2306
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    .line 2328
    const/4 p0, 0x0

    .line 2451
    .end local p0
    .end local p1
    :goto_0
    return p0

    .line 2341
    .restart local p0
    .restart local p1
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    .line 2342
    .local v1, hasRingingCall:Z
    :goto_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    move v3, v2

    .line 2343
    .local v3, hasActiveCall:Z
    :goto_2
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x1

    move v4, v2

    .line 2344
    .local v4, hasHoldingCall:Z
    :goto_3
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2346
    .local v6, phoneType:I
    if-eqz v1, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .end local v1           #hasRingingCall:Z
    if-nez v1, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 2354
    sget-boolean v1, Lcom/android/phone/PhoneApp;->FTR_27024_CALLFIREWALL_INCOMINGCALL:Z

    if-eqz v1, :cond_a

    .line 2355
    sget-object v1, Lcom/android/phone/PhoneHubService;->mCallbacks:Lcom/motorola/firewall/CallFirewallCallback;

    if-eqz v1, :cond_a

    .line 2356
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "handleHeadsetHook(). mPhoneCheckService != null pass phone number&calllog type to firewall app"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2357
    :cond_2
    const/4 v2, 0x1

    .line 2358
    .local v2, calltype:I
    const/4 v5, 0x0

    .line 2359
    .local v5, phoneNumber:Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2360
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2361
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_1d

    .line 2362
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2365
    .end local v5           #phoneNumber:Ljava/lang/String;
    .local v1, phoneNumber:Ljava/lang/String;
    :goto_4
    sget-boolean v5, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleHeadsetHook(). phoneNumber = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2367
    :cond_3
    const/4 v5, 0x0

    .line 2368
    .local v5, result:I
    if-eqz v1, :cond_1c

    .line 2369
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v1, v2, v5, v7}, Lcom/android/phone/PhoneHubService;->PhoneCheckNumber(Ljava/lang/String;IZI)I

    .end local v5           #result:I
    move-result v1

    .line 2373
    .local v1, result:I
    :goto_5
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->DBG:Z

    .end local v2           #calltype:I
    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleHeadsetHook(). mPhoneCheckService PhoneCheckNumber result"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2374
    :cond_4
    const/4 v2, 0x2

    if-eq v2, v1, :cond_5

    const/4 v2, 0x3

    if-ne v2, v1, :cond_a

    .line 2375
    :cond_5
    sget-boolean p0, Lcom/android/phone/PhoneUtils;->DBG:Z

    .end local p0
    if-eqz p0, :cond_6

    const-string p0, "handleHeadsetHook(). don\'t answer the incoming call."

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2376
    :cond_6
    const/4 p0, 0x1

    goto/16 :goto_0

    .line 2341
    .end local v1           #result:I
    .end local v3           #hasActiveCall:Z
    .end local v4           #hasHoldingCall:Z
    .end local v6           #phoneType:I
    .restart local p0
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2342
    .local v1, hasRingingCall:Z
    :cond_8
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_2

    .line 2343
    .restart local v3       #hasActiveCall:Z
    :cond_9
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    .line 2383
    .end local v1           #hasRingingCall:Z
    .restart local v4       #hasHoldingCall:Z
    .restart local v6       #phoneType:I
    :cond_a
    const/4 v1, 0x2

    if-ne v6, v1, :cond_e

    .line 2384
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    .end local p0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2424
    :cond_b
    :goto_6
    if-eqz v4, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p0

    if-nez p0, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_d

    .end local p1
    if-nez v3, :cond_d

    .line 2427
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 2428
    sget-boolean p0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz p0, :cond_c

    const-string p0, "handleHeadsetHook: UNmuting..."

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2429
    :cond_c
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2434
    :goto_7
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->syncInCallScreen()V

    .line 2451
    :cond_d
    const/4 p0, 0x1

    goto/16 :goto_0

    .line 2385
    .restart local p0
    .restart local p1
    :cond_e
    const/4 v1, 0x1

    if-eq v6, v1, :cond_f

    const/4 v1, 0x3

    if-ne v6, v1, :cond_13

    .line 2387
    :cond_f
    if-eqz v3, :cond_11

    if-eqz v4, :cond_11

    .line 2388
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v1, :cond_10

    const-string v1, "handleHeadsetHook: ringing (both lines in use) ==> answer!"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2389
    :cond_10
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    .end local p0
    invoke-static {v1, p0}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_6

    .line 2391
    .restart local p0
    :cond_11
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v1, :cond_12

    const-string v1, "handleHeadsetHook: ringing ==> answer!"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2392
    :cond_12
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    .end local p0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_6

    .line 2396
    .restart local p0
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected phone type: "

    .end local v0           #app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2400
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local p0
    .restart local p1
    :cond_14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2401
    sget-boolean p0, Lcom/android/phone/PhoneUtils;->DBG:Z

    .end local p0
    if-eqz p0, :cond_15

    const-string p0, "handleHeadsetHook: longpress -> hangup"

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2402
    :cond_15
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object p0

    iget-object p0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_6

    .line 2404
    .restart local p0
    :cond_16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_b

    .line 2408
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p0

    .line 2409
    .local p0, c:Lcom/android/internal/telephony/Connection;
    if-eqz p0, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneUtils;->inEmergencyCall()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object p0

    .end local p0           #c:Lcom/android/internal/telephony/Connection;
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 2411
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 2412
    sget-boolean p0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz p0, :cond_17

    const-string p0, "handleHeadsetHook: UNmuting..."

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2413
    :cond_17
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2418
    :goto_8
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->syncInCallScreen()V

    goto/16 :goto_6

    .line 2415
    :cond_18
    sget-boolean p0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz p0, :cond_19

    const-string p0, "handleHeadsetHook: muting..."

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2416
    :cond_19
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_8

    .line 2431
    .end local p1
    :cond_1a
    sget-boolean p0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz p0, :cond_1b

    const-string p0, "handleHeadsetHook: muting..."

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2432
    :cond_1b
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto/16 :goto_7

    .local v1, phoneNumber:Ljava/lang/String;
    .restart local v2       #calltype:I
    .restart local v5       #result:I
    .local p0, phone:Lcom/android/internal/telephony/Phone;
    .restart local p1
    :cond_1c
    move v1, v5

    .end local v5           #result:I
    .local v1, result:I
    goto/16 :goto_5

    .local v1, cn:Lcom/android/internal/telephony/Connection;
    .local v5, phoneNumber:Ljava/lang/String;
    :cond_1d
    move-object v1, v5

    .end local v5           #phoneNumber:Ljava/lang/String;
    .local v1, phoneNumber:Ljava/lang/String;
    goto/16 :goto_4
.end method

.method static handleHeadsetLongPress(Lcom/android/internal/telephony/Phone;)Z
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x1

    .line 2486
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "handleHeadsetLongPress()..."

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2487
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2490
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    move v1, v3

    .line 2517
    :goto_0
    return v1

    .line 2506
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move v1, v3

    .line 2517
    goto :goto_0
.end method

.method static hangup(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 613
    if-eqz p0, :cond_0

    .line 614
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection hangup: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static hangup(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .parameter "call"

    .prologue
    .line 590
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 592
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V

    .line 598
    :goto_0
    const/4 v2, 0x1

    .line 603
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :goto_1
    return v2

    .line 596
    .restart local v0       #cm:Lcom/android/internal/telephony/CallManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 600
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call hangup: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static hangup(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .parameter "cm"

    .prologue
    .line 482
    const/4 v2, 0x0

    .line 483
    .local v2, hungup:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 484
    .local v3, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 485
    .local v1, fg:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 487
    .local v0, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3

    .line 488
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "HANGUP ringing call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 489
    :cond_0
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 498
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hungup="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 500
    :cond_2
    return v2

    .line 490
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_5

    .line 491
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "HANGUP foreground call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 492
    :cond_4
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0

    .line 493
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 494
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_6

    const-string v4, "HANGUP background call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 495
    :cond_6
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0
.end method

.method static hangupActiveCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .parameter "foreground"

    .prologue
    .line 545
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hangup active call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 546
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .parameter "background"

    .prologue
    .line 550
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hangup holding call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 551
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .parameter "phone"

    .prologue
    .line 560
    const/4 v2, 0x0

    .line 561
    .local v2, hungUpRingingCall:Z
    const/4 v1, 0x0

    .line 562
    .local v1, hungUpFgCall:Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 563
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 566
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 567
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "endCallInternal: Hang up Ringing Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 568
    :cond_0
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 572
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3

    .line 573
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "endCallInternal: Hang up Foreground Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 574
    :cond_2
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 577
    :cond_3
    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 7
    .parameter "ringing"

    .prologue
    const/4 v5, 0x1

    const-string v6, "hangup ringing call"

    .line 504
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "hangup ringing call"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 506
    .local v2, phoneType:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 508
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    .line 512
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 513
    .local v3, state:Lcom/android/internal/telephony/Call$State;
    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    .line 514
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "hangup ringing call"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 515
    :cond_1
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    .line 538
    .end local v3           #state:Lcom/android/internal/telephony/Call$State;
    :goto_0
    return v4

    .line 516
    .restart local v3       #state:Lcom/android/internal/telephony/Call$State;
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_5

    .line 517
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "hangup Call waiting call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 518
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v1, v4, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 519
    .local v1, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    .line 521
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v4, :cond_4

    .line 522
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4, v5}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    :cond_4
    move v4, v5

    .line 525
    goto :goto_0

    .line 530
    .end local v1           #notifier:Lcom/android/phone/CallNotifier;
    :cond_5
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_6

    const-string v4, "No Ringing call to hangup"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 531
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 533
    .end local v3           #state:Lcom/android/internal/telephony/Call$State;
    :cond_7
    if-eq v2, v5, :cond_8

    const/4 v4, 0x3

    if-ne v2, v4, :cond_a

    .line 537
    :cond_8
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_9

    const-string v4, "hangup ringing call"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 538
    :cond_9
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    goto :goto_0

    .line 540
    :cond_a
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static final hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z
    .locals 4
    .parameter "call"

    .prologue
    .line 2592
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2594
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v1, :cond_2

    .line 2595
    monitor-enter v1

    .line 2596
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2597
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2598
    const/4 v3, 0x1

    monitor-exit v1

    .line 2602
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return v3

    .line 2600
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit v1

    .line 2602
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 2600
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .parameter "phone"

    .prologue
    .line 2577
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static hasPhoneProviderExtras(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 2848
    if-nez p0, :cond_0

    move v2, v3

    .line 2854
    :goto_0
    return v2

    .line 2851
    :cond_0
    const-string v2, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2852
    .local v1, name:Ljava/lang/String;
    const-string v2, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2854
    .local v0, gatewayUri:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private static hexCharToInt(C)I
    .locals 5
    .parameter "c"

    .prologue
    const/16 v4, 0x61

    const/16 v3, 0x41

    const/16 v2, 0x30

    .line 1105
    const/4 v0, 0x0

    .line 1107
    .local v0, ret:I
    if-lt p0, v2, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    .line 1108
    sub-int v0, p0, v2

    .line 1110
    :cond_0
    if-lt p0, v3, :cond_1

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1

    .line 1111
    sub-int v1, p0, v3

    add-int/lit8 v0, v1, 0xa

    .line 1113
    :cond_1
    if-lt p0, v4, :cond_2

    const/16 v1, 0x66

    if-gt p0, v1, :cond_2

    .line 1114
    sub-int v1, p0, v4

    add-int/lit8 v0, v1, 0xa

    .line 1117
    :cond_2
    return v0
.end method

.method private static hexStringToBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter "s"

    .prologue
    const/4 v7, 0x0

    .line 1123
    if-nez p0, :cond_0

    move-object v4, v7

    .line 1143
    :goto_0
    return-object v4

    .line 1125
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1127
    .local v3, sz:I
    rem-int/lit8 v1, v3, 0x2

    .line 1129
    .local v1, residue:I
    if-eqz v1, :cond_1

    .line 1130
    sub-int/2addr v3, v1

    .line 1133
    :cond_1
    div-int/lit8 v4, v3, 0x2

    new-array v2, v4, [B

    .line 1135
    .local v2, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 1136
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isHexCharToInt(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isHexCharToInt(C)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move-object v4, v7

    .line 1137
    goto :goto_0

    .line 1140
    :cond_3
    div-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hexCharToInt(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hexCharToInt(C)I

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1135
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_4
    move-object v4, v2

    .line 1143
    goto :goto_0
.end method

.method public static inCallCityIdLookup(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;ZZLcom/android/phone/CityIdInfo$OnQueryCompleteListener;)V
    .locals 3
    .parameter "context"
    .parameter "info"
    .parameter "isIncoming"
    .parameter "isNanpNetwork"
    .parameter "listener"

    .prologue
    const-string v2, "com.cequint.cityidinfo"

    .line 3756
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    .line 3769
    :cond_0
    :goto_0
    return-void

    .line 3761
    :cond_1
    const-string v1, "com.cequint.cityidinfo"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/CallerInfo;->getCityIdInfoData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CityIdInfo;

    .line 3762
    .local v0, cidInfo:Lcom/android/phone/CityIdInfo;
    if-nez v0, :cond_0

    .line 3765
    new-instance v0, Lcom/android/phone/CityIdInfo;

    .end local v0           #cidInfo:Lcom/android/phone/CityIdInfo;
    invoke-direct {v0}, Lcom/android/phone/CityIdInfo;-><init>()V

    .line 3766
    .restart local v0       #cidInfo:Lcom/android/phone/CityIdInfo;
    const-string v1, "com.cequint.cityidinfo"

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/CallerInfo;->addCityIdInfoData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3767
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p2, p3}, Lcom/android/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    goto :goto_0
.end method

.method static inEmergencyCall()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const-string v6, "PhoneUtils"

    .line 3471
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 3472
    .local v2, phoneApp:Lcom/android/phone/PhoneApp;
    iget-object v4, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3473
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v4, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3474
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    iget-object v4, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3476
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->checkEmergencyCallByCons(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3477
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_0

    .line 3478
    const-string v4, "PhoneUtils"

    const-string v4, "ForegroundCall has EmergencyCall connection"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v4, v5

    .line 3494
    :goto_0
    return v4

    .line 3482
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->checkEmergencyCallByCons(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3483
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_2

    .line 3484
    const-string v4, "PhoneUtils"

    const-string v4, "BackgroundCal has EmergencyCall connection"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v4, v5

    .line 3485
    goto :goto_0

    .line 3488
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->checkEmergencyCallByCons(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3489
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_4

    .line 3490
    const-string v4, "PhoneUtils"

    const-string v4, "RingingCall has EmergencyCall connection"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v4, v5

    .line 3491
    goto :goto_0

    .line 3494
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V
    .locals 4
    .parameter "cm"

    .prologue
    .line 356
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    if-nez v1, :cond_0

    .line 357
    new-instance v1, Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>(Lcom/android/phone/PhoneUtils$1;)V

    sput-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    .line 361
    :cond_0
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, p0}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 363
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ussd.IExtendedNetworkService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 366
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "Extended NW bindService IExtendedNetworkService"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 368
    :cond_1
    return-void
.end method

.method static isApAllowed(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 3528
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3530
    .local v0, aMgr:Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 3532
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3536
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 3532
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3536
    goto :goto_0
.end method

.method static isBluetoothHeadsetConnected()Z
    .locals 2

    .prologue
    .line 3624
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget v0, v0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCallForwardPrefix(Ljava/lang/String;)Z
    .locals 6
    .parameter "numbers"

    .prologue
    const/4 v2, 0x0

    const-string v5, "*73"

    const-string v4, "*72"

    const-string v3, "*71"

    .line 4103
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 4109
    :goto_0
    return v0

    .line 4104
    :cond_1
    const-string v0, "*71"

    const-string v0, "*71"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "*72"

    const-string v0, "*72"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "*73"

    const-string v0, "*73"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4107
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 4109
    goto :goto_0
.end method

.method static isCallRestrictionEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 3983
    const/4 v0, 0x0

    .line 3984
    .local v0, callRestrictEnabled:Z
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSettingsRestrictionLockEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getIncomingCallRestriction(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getOutgoingCallRestriction(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 3987
    :cond_0
    const/4 v0, 0x1

    .line 3989
    :cond_1
    return v0
.end method

.method static isConferenceCall(Lcom/android/internal/telephony/Call;)Z
    .locals 6
    .parameter "call"

    .prologue
    const/4 v5, 0x1

    .line 2067
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2068
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2069
    .local v2, phoneType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2070
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_2

    move v3, v5

    .line 2082
    :goto_0
    return v3

    .line 2074
    :cond_0
    if-ne v2, v5, :cond_1

    .line 2075
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2076
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_2

    move v3, v5

    .line 2077
    goto :goto_0

    .line 2080
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2082
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static isConferenceCallExclusive(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .parameter "fgCall"
    .parameter "bgCall"

    .prologue
    .line 3227
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConvertNumberFlexEnabled()Z
    .locals 1

    .prologue
    .line 4099
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->bConvertNumberEnabled:Z

    return v0
.end method

.method static isEriBannerEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "ro.mot.eri"

    .line 4252
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4253
    const-string v0, "ro.mot.eri"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.mot.eri"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "eri_text_banner"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 4258
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static isEriToneEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "ro.mot.eri"

    .line 4242
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4243
    const-string v0, "ro.mot.eri"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.mot.eri"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "eri_alert_sounds"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 4248
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private static isHexCharToInt(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 1089
    const/4 v0, 0x0

    .line 1091
    .local v0, ret:Z
    const/16 v1, 0x30

    if-lt p0, v1, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    .line 1092
    const/4 v0, 0x1

    .line 1101
    :goto_0
    return v0

    .line 1093
    :cond_0
    const/16 v1, 0x41

    if-lt p0, v1, :cond_1

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1

    .line 1094
    const/4 v0, 0x1

    goto :goto_0

    .line 1095
    :cond_1
    const/16 v1, 0x61

    if-lt p0, v1, :cond_2

    const/16 v1, 0x66

    if-gt p0, v1, :cond_2

    .line 1096
    const/4 v0, 0x1

    goto :goto_0

    .line 1098
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isIncomingCallRestricted(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "cnapPresentation"
    .parameter "number"

    .prologue
    .line 3892
    const/4 v0, 0x0

    .line 3893
    .local v0, incomingCallRestricted:Z
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSettingsRestrictionLockEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3894
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getIncomingCallRestriction(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3913
    :cond_0
    :goto_0
    return v0

    .line 3896
    :pswitch_0
    const/4 v0, 0x1

    .line 3897
    goto :goto_0

    .line 3899
    :pswitch_1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq p1, v1, :cond_1

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq p1, v1, :cond_1

    .line 3901
    invoke-static {p0, p2}, Lcom/android/phone/Utils;->getIdentityId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 3902
    const/4 v0, 0x1

    goto :goto_0

    .line 3905
    :cond_1
    const/4 v0, 0x1

    .line 3907
    goto :goto_0

    .line 3894
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static isLibCameraLocked()Z
    .locals 1

    .prologue
    .line 3441
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sLibCameraLocked:Z

    return v0
.end method

.method public static isNanpNetwork(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 3743
    const/4 v0, 0x1

    .line 3744
    .local v0, isNanpNetwork:Z
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 3745
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isInNanpNetwork()Z

    move-result v0

    .line 3746
    :cond_0
    return v0
.end method

.method static isOutgoingCallRestricted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "number"

    .prologue
    .line 3956
    const/4 v0, 0x0

    .line 3957
    .local v0, outgoingCallRestricted:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v1, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 3958
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3959
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isDANNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSettingsRestrictionLockEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3964
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getOutgoingCallRestriction(Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3979
    :cond_0
    :goto_0
    return v0

    .line 3966
    :pswitch_0
    const/4 v0, 0x1

    .line 3967
    goto :goto_0

    .line 3969
    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/phone/Utils;->getIdentityId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3970
    const/4 v0, 0x1

    goto :goto_0

    .line 3964
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isOutgoingMsgBlokced(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4230
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "restriction_lock"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "outgoing_message_restriction"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v3

    .line 4236
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static isPhoneInEcm()Z
    .locals 5

    .prologue
    .line 3823
    const/4 v2, 0x0

    .line 3824
    .local v2, phoneInEcm:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v1, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 3825
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 3826
    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3827
    .local v0, ecmMode:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3828
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3831
    .end local v0           #ecmMode:Ljava/lang/String;
    :cond_0
    return v2
.end method

.method static isPhoneLockedOrScreenOff()Z
    .locals 1

    .prologue
    .line 3422
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method public static isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 3046
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isRoutableViaGateway(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 2954
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2962
    :goto_0
    return v0

    .line 2957
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2958
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2959
    goto :goto_0

    .line 2961
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2962
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static isServiceNumber(Ljava/lang/String;)Z
    .locals 7
    .parameter "number"

    .prologue
    .line 3676
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 3677
    .local v2, mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3679
    .local v0, context:Landroid/content/Context;
    :try_start_0
    const-string v1, "PhoneUtils"

    const-string v3, "isServiceNumber"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    const/4 v1, 0x0

    .line 3681
    .local v1, resource_id1:I
    const/4 v1, 0x0

    .line 3682
    .local v1, resource_id2:I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .end local v1           #resource_id2:I
    const-string v3, "equal_Service_Number"

    const-string v4, "array"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3683
    .local v1, resource_id1:I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "startwith_Service_Number"

    const-string v5, "array"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3684
    .local v3, resource_id2:I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 3685
    .local v1, equalServiceNumber:[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 3687
    .local v3, startwithServiceNumber:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 3688
    aget-object v4, v1, v0

    const-string v5, ""

    if-eq v4, v5, :cond_0

    aget-object v4, v1, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3689
    const/4 p0, 0x1

    .line 3713
    .end local v0           #i:I
    .end local v1           #equalServiceNumber:[Ljava/lang/String;
    .end local v3           #startwithServiceNumber:[Ljava/lang/String;
    .end local p0
    :goto_1
    return p0

    .line 3687
    .restart local v0       #i:I
    .restart local v1       #equalServiceNumber:[Ljava/lang/String;
    .restart local v3       #startwithServiceNumber:[Ljava/lang/String;
    .restart local p0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3691
    :cond_1
    const/4 v0, 0x0

    .end local v1           #equalServiceNumber:[Ljava/lang/String;
    .local v0, j:I
    :goto_2
    array-length v1, v3

    if-ge v0, v1, :cond_3

    .line 3692
    aget-object v1, v3, v0

    const-string v4, ""

    if-eq v1, v4, :cond_2

    aget-object v1, v3, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 3693
    const/4 p0, 0x1

    goto :goto_1

    .line 3691
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3695
    .end local v0           #j:I
    .end local v3           #startwithServiceNumber:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3696
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isServiceNumber Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    :cond_3
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3702
    .local v0, nonFormatNumber:Ljava/lang/String;
    const-string p0, "persist.radio.vzw.cdma.mdn"

    .end local p0
    const-string v1, "unknown"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3703
    .local p0, cdmaMDN:Ljava/lang/String;
    const-string v1, "unknown"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #cdmaMDN:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 3704
    const/4 p0, 0x1

    goto :goto_1

    .line 3706
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isConvertNumberFlexEnabled()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 3707
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_5

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_7

    .line 3709
    :cond_6
    const-string p0, "19085594899"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 3710
    const/4 p0, 0x1

    goto :goto_1

    .line 3713
    :cond_7
    const/4 p0, 0x0

    goto :goto_1
.end method

.method static isSettingsRestrictionLockEnabled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3842
    const/4 v1, 0x0

    .line 3843
    .local v1, restrictLockEnabled:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 3844
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3845
    if-eqz p0, :cond_0

    .line 3846
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "restriction_lock"

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    move v1, v5

    .line 3851
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v4

    .line 3846
    goto :goto_0
.end method

.method static isSingleCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .parameter "fgCall"
    .parameter "bgCall"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3236
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3237
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v1, :cond_1

    .line 3238
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_0

    move v1, v4

    .line 3242
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 3238
    goto :goto_0

    .line 3242
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method static isSpeakerOn(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2183
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2184
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    return v1
.end method

.method public static isSpecialNumberEnable(Ljava/lang/String;)Z
    .locals 12
    .parameter "numbers"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "*31#"

    const-string v10, "#31#"

    .line 4037
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v9, :cond_1

    :cond_0
    move v5, v7

    .line 4075
    :goto_0
    return v5

    .line 4039
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v2, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 4040
    .local v2, mPhone:Lcom/android/internal/telephony/Phone;
    const-string v5, "persist.radio.vzw.cdma.mdn"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4042
    .local v0, cdmaMDN:Ljava/lang/String;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v8, :cond_e

    .line 4044
    :cond_3
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4046
    .local v3, nonFormatNumber:Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v9, :cond_5

    :cond_4
    move v5, v7

    .line 4047
    goto :goto_0

    .line 4050
    :cond_5
    sget-boolean v5, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSpecialNumber nonFormatNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4051
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 4052
    const-string v5, "*86"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "unknown"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move v5, v8

    .line 4053
    goto :goto_0

    .line 4054
    :cond_8
    const-string v5, "*67"

    const-string v6, "*67"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "*82"

    const-string v6, "*82"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_a

    const-string v5, "#31#"

    const-string v5, "#31#"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "*31#"

    const-string v5, "*31#"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move v5, v8

    .line 4058
    goto/16 :goto_0

    .line 4059
    :cond_a
    sget-object v5, Lcom/android/phone/PhoneUtils;->vzwFilterServiceNoMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v8

    .line 4060
    goto/16 :goto_0

    .line 4063
    :cond_b
    sget-object v5, Lcom/android/phone/PhoneUtils;->vzwConverBackServiceNoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, numberitr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 4064
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4065
    .local v1, keyValue:Ljava/lang/String;
    sget-boolean v5, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter isSpecialNumberEnable hashmap case keyValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4066
    :cond_d
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v8

    .line 4067
    goto/16 :goto_0

    .end local v1           #keyValue:Ljava/lang/String;
    .end local v3           #nonFormatNumber:Ljava/lang/String;
    .end local v4           #numberitr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e
    move v5, v7

    .line 4075
    goto/16 :goto_0
.end method

.method static lockLibCamera()V
    .locals 2

    .prologue
    .line 3429
    const-string v0, "> setting libcamera.emergency.lock to 1"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3430
    const-string v0, "libcamera.emergency.lock"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3431
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sLibCameraLocked:Z

    .line 3432
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3738
    const-string v0, "PhoneUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    return-void
.end method

.method public static mayShowQuickSmsDialog(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Ljava/lang/Boolean;)V
    .locals 12
    .parameter "context"
    .parameter "c"
    .parameter "isCDMACallWaiting"

    .prologue
    const/4 v11, 0x0

    .line 4150
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4227
    :cond_0
    :goto_0
    return-void

    .line 4154
    :cond_1
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v9, :cond_2

    const-string v9, "mayShowQuickSmsDialog"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4156
    :cond_2
    const/4 v3, 0x0

    .line 4157
    .local v3, isInstantMessageReplyEnabled:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 4158
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 4159
    .local v4, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    .line 4161
    .local v6, presentation:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090018

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 4162
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "feature 16916 is turned off"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4167
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "qsms_enable_text_message_reply"

    invoke-static {v9, v10, v11}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4

    .line 4168
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "The instant reply message is unchecked in call setting"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4173
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4174
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "The number is null or empty"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4178
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v9, :cond_6

    .line 4179
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not rejected by local side: cause="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4183
    :cond_6
    sget v9, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v6, v9, :cond_7

    .line 4184
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Presentation is not PRESENTATION_ALLOWED: presentation="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4188
    :cond_7
    invoke-static {p0, v6, v4}, Lcom/android/phone/PhoneUtils;->isIncomingCallRestricted(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4189
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "The incoming call is restricted"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4193
    :cond_8
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isOutgoingMsgBlokced(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4194
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "The outgoing message is blocked"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4198
    :cond_9
    sget-boolean v9, Lcom/android/phone/PhoneApp;->FTR_27024_CALLFIREWALL_INCOMINGCALL:Z

    if-eqz v9, :cond_a

    .line 4199
    sget-object v9, Lcom/android/phone/PhoneHubService;->mCallbacks:Lcom/motorola/firewall/CallFirewallCallback;

    if-eqz v9, :cond_a

    .line 4200
    const/4 v0, 0x1

    .line 4201
    .local v0, calltype:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 4202
    .local v5, phoneNumber:Ljava/lang/String;
    const/4 v8, 0x0

    .line 4203
    .local v8, result:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    invoke-static {v5, v0, v11, v9}, Lcom/android/phone/PhoneHubService;->PhoneCheckNumber(Ljava/lang/String;IZI)I

    move-result v8

    .line 4204
    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    .line 4211
    .end local v0           #calltype:I
    .end local v5           #phoneNumber:Ljava/lang/String;
    .end local v8           #result:I
    :cond_a
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 4212
    .local v7, quickSmsIntent:Landroid/content/Intent;
    const-string v9, "com.motorola.quicksms"

    const-string v10, "com.motorola.quicksms.QuickSmsIgnoreCallDialog"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4216
    const-string v9, "sms_number"

    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4219
    const/high16 v9, 0x3400

    invoke-virtual {v7, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4223
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4224
    .end local v7           #quickSmsIntent:Landroid/content/Intent;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 4225
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v9, "QuickSms"

    const-string v10, "QuickSms activity not Found!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static mergeCalls()V
    .locals 1

    .prologue
    .line 946
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 947
    return-void
.end method

.method static mergeCalls(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    const-string v4, "mergeCalls"

    .line 950
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 951
    .local v2, phoneType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 952
    sget-boolean v3, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "mergeCalls"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 953
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 954
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_1

    .line 961
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 964
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v3, v4}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 975
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_1
    :goto_0
    return-void

    .line 969
    :cond_2
    :try_start_0
    sget-boolean v3, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "mergeCalls"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 970
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CallManager;->conference(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 971
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 972
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mergeCalls: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"

    .prologue
    const v4, 0x7f0b0138

    .line 2800
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, p2

    .line 2834
    .end local p2
    .local v1, number:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2802
    .end local v1           #number:Ljava/lang/String;
    .restart local p2
    :cond_1
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifyForSpecialCnapCases: initially, number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", presentation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ci "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2808
    :cond_2
    const v2, 0x7f0b037f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p3, v2, :cond_3

    .line 2810
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2811
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    iput v2, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2819
    :cond_3
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p3, v2, :cond_6

    .line 2820
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v0

    .line 2821
    .local v0, cnapSpecialCase:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 2823
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v2, :cond_8

    .line 2824
    const v2, 0x7f0b0139

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2828
    :cond_4
    :goto_1
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifyForSpecialCnapCases: number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; presentation now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2830
    :cond_5
    iput v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2833
    .end local v0           #cnapSpecialCase:I
    :cond_6
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifyForSpecialCnapCases: returning number string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    :cond_7
    move-object v1, p2

    .line 2834
    .end local p2
    .restart local v1       #number:Ljava/lang/String;
    goto/16 :goto_0

    .line 2825
    .end local v1           #number:Ljava/lang/String;
    .restart local v0       #cnapSpecialCase:I
    .restart local p2
    :cond_8
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v0, v2, :cond_4

    .line 2826
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method static okToAddCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 11
    .parameter "cm"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2669
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 2671
    .local v6, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 2672
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 2673
    .local v7, phoneType:I
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v8, :cond_1

    .line 2678
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 2679
    .local v1, app:Lcom/android/phone/PhoneApp;
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v8, :cond_0

    iget-object v8, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getAddCallMenuStateAfterCallWaiting()Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    .line 2694
    .end local v1           #app:Lcom/android/phone/PhoneApp;
    :goto_0
    return v8

    .restart local v1       #app:Lcom/android/phone/PhoneApp;
    :cond_0
    move v8, v10

    .line 2679
    goto :goto_0

    .line 2682
    .end local v1           #app:Lcom/android/phone/PhoneApp;
    :cond_1
    if-eq v7, v9, :cond_2

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 2689
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    .line 2690
    .local v5, hasRingingCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    .line 2691
    .local v3, hasActiveCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .line 2692
    .local v4, hasHoldingCall:Z
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    move v0, v9

    .line 2694
    .local v0, allLinesTaken:Z
    :goto_1
    if-nez v5, :cond_5

    if-nez v0, :cond_5

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v8, :cond_3

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v8, :cond_3

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v8, :cond_5

    :cond_3
    move v8, v9

    goto :goto_0

    .end local v0           #allLinesTaken:Z
    :cond_4
    move v0, v10

    .line 2692
    goto :goto_1

    .restart local v0       #allLinesTaken:Z
    :cond_5
    move v8, v10

    .line 2694
    goto :goto_0

    .line 2700
    .end local v0           #allLinesTaken:Z
    .end local v3           #hasActiveCall:Z
    .end local v4           #hasHoldingCall:Z
    .end local v5           #hasRingingCall:Z
    :cond_6
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method static okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .parameter "cm"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2642
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "okToMergeCalls()..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2643
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2644
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v2, :cond_2

    .line 2646
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 2648
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2649
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_1

    move v2, v4

    .line 2656
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :goto_0
    return v2

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_1
    move v2, v5

    .line 2649
    goto :goto_0

    .line 2651
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_2
    if-ne v1, v4, :cond_4

    .line 2656
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_0

    .line 2660
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .parameter "cm"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2614
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2615
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v2, :cond_1

    .line 2619
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2620
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_0

    move v2, v4

    .line 2629
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :goto_0
    return v2

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_0
    move v2, v5

    .line 2620
    goto :goto_0

    .line 2622
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_1
    if-eq v1, v4, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 2629
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_0

    .line 2633
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 3
    .parameter "cm"
    .parameter "scheme"
    .parameter "number"
    .parameter "primarySipUri"

    .prologue
    .line 3020
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pickPhoneBasedOnNumber: scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sipUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3023
    :cond_0
    if-eqz p3, :cond_1

    .line 3024
    invoke-static {p0, p3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3025
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3027
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    goto :goto_0
.end method

.method static placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 11
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"

    .prologue
    .line 699
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_1

    .line 700
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 701
    .local v7, temp:Lcom/android/internal/telephony/Call$State;
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "placeCall: ..Prev Call in Dialing mode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 702
    :cond_0
    const/4 v9, 0x3

    .line 774
    .end local v7           #temp:Lcom/android/internal/telephony/Call$State;
    :goto_0
    return v9

    .line 704
    :cond_1
    const/4 v6, 0x0

    .line 706
    .local v6, status:I
    :try_start_0
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "placeCall: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 708
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9, p0, p1}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 709
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "===> phone.dial() returned: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 711
    :cond_3
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 714
    .local v5, phoneType:I
    if-nez v1, :cond_7

    .line 715
    const/4 v9, 0x1

    if-ne v5, v9, :cond_6

    .line 716
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dialed MMI code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 717
    :cond_4
    const/4 v6, 0x1

    .line 719
    sget-object v9, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v9, :cond_5

    .line 721
    :try_start_1
    sget-object v9, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v9, p1}, Lcom/android/internal/telephony/IExtendedNetworkService;->setMmiString(Ljava/lang/String;)V

    .line 722
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Extended NW bindService setUssdString ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    .end local v5           #phoneType:I
    :cond_5
    :goto_1
    move v9, v6

    .line 774
    goto/16 :goto_0

    .line 723
    .restart local v1       #cn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #phoneType:I
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 724
    .local v3, e:Landroid/os/RemoteException;
    const/4 v9, 0x0

    :try_start_2
    sput-object v9, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 769
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #phoneType:I
    :catch_1
    move-exception v9

    move-object v4, v9

    .line 770
    .local v4, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v9, "PhoneUtils"

    const-string v10, "Exception from phone.dial()"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    const/4 v6, 0x2

    goto :goto_1

    .line 728
    .end local v4           #ex:Lcom/android/internal/telephony/CallStateException;
    .restart local v1       #cn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #phoneType:I
    :cond_6
    const/4 v6, 0x2

    goto :goto_1

    .line 731
    :cond_7
    :try_start_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 733
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v9, 0x2

    if-ne v5, v9, :cond_8

    .line 734
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V

    .line 742
    :cond_8
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v2, "content"

    .line 743
    .local v2, content:Ljava/lang/String;
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 744
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v8

    .line 745
    .local v8, userDataObject:Ljava/lang/Object;
    if-nez v8, :cond_a

    .line 746
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 759
    .end local v8           #userDataObject:Ljava/lang/Object;
    :cond_9
    :goto_2
    new-instance v9, Lcom/android/phone/PhoneUtils$2;

    invoke-direct {v9}, Lcom/android/phone/PhoneUtils$2;-><init>()V

    invoke-virtual {v9}, Lcom/android/phone/PhoneUtils$2;->start()V

    goto :goto_1

    .line 751
    .restart local v8       #userDataObject:Ljava/lang/Object;
    :cond_a
    instance-of v9, v8, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_b

    .line 752
    check-cast v8, Lcom/android/internal/telephony/CallerInfo;

    .end local v8           #userDataObject:Ljava/lang/Object;
    iput-object p2, v8, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_2

    .line 754
    .restart local v8       #userDataObject:Ljava/lang/Object;
    :cond_b
    check-cast v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v8           #userDataObject:Ljava/lang/Object;
    iget-object v9, v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p2, v9, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method static placeCallVia(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I
    .locals 11
    .parameter "context"
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"
    .parameter "gatewayUri"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x2

    const-string v9, "PhoneUtils"

    .line 802
    sget-boolean v6, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeCallVia: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' GW:\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 806
    :cond_0
    if-eqz p4, :cond_1

    const-string v6, "tel"

    invoke-virtual {p4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 807
    :cond_1
    const-string v6, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported URL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 864
    :goto_0
    return v6

    .line 816
    :cond_2
    invoke-virtual {p4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 819
    .local v3, gatewayNumber:Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, v3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 825
    .local v1, connection:Lcom/android/internal/telephony/Connection;
    :goto_1
    if-nez v1, :cond_3

    .line 826
    const-string v6, "PhoneUtils"

    const-string v6, "Got null connection."

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 827
    goto :goto_0

    .line 820
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    :catch_0
    move-exception v2

    .line 821
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "PhoneUtils"

    const-string v6, "Exception dialing gateway"

    invoke-static {v9, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 822
    const/4 v1, 0x0

    .restart local v1       #connection:Lcom/android/internal/telephony/Connection;
    goto :goto_1

    .line 830
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 831
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v8, :cond_8

    const/4 v6, 0x1

    move v5, v6

    .line 833
    .local v5, phoneIsCdma:Z
    :goto_2
    if-eqz v5, :cond_4

    .line 834
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V

    .line 838
    :cond_4
    if-eqz v5, :cond_5

    .line 839
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 841
    :cond_5
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 842
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 843
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 848
    const/4 v4, 0x0

    .line 850
    .local v4, info:Lcom/android/internal/telephony/CallerInfo;
    const-string v6, "content"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 851
    invoke-static {p0, p3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 857
    :cond_6
    if-nez v4, :cond_7

    .line 858
    invoke-static {p0, p2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 860
    :cond_7
    iput-object p2, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 861
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 863
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    move v6, v10

    .line 864
    goto :goto_0

    .end local v4           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #phoneIsCdma:Z
    :cond_8
    move v5, v10

    .line 831
    goto :goto_2
.end method

.method static playTone(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 1438
    sget-object v7, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {p0, v7}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    .line 1439
    .local v4, tone:Landroid/media/Ringtone;
    const/4 v3, 0x5

    .line 1440
    .local v3, stream:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1442
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v7, v0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v7, :cond_0

    iget-object v7, v0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v7}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1443
    const/4 v3, 0x6

    .line 1446
    :cond_0
    invoke-virtual {v4, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1447
    const-string v7, "audio"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1448
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1449
    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .line 1452
    :cond_1
    const-string v7, "1"

    const-string v8, "ro.mot.hw.ringerswitch"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1453
    .local v2, isRingerSwitchPresent:Z
    if-eqz v2, :cond_3

    const/4 v7, 0x0

    move v5, v7

    .line 1454
    .local v5, vibrateType:I
    :goto_0
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1455
    new-instance v6, Landroid/os/Vibrator;

    invoke-direct {v6}, Landroid/os/Vibrator;-><init>()V

    .line 1456
    .local v6, vibrator:Landroid/os/Vibrator;
    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1458
    .end local v6           #vibrator:Landroid/os/Vibrator;
    :cond_2
    return-void

    .line 1453
    .end local v5           #vibrateType:I
    :cond_3
    const/4 v7, 0x1

    move v5, v7

    goto :goto_0
.end method

.method public static recentCallCityIdLookup(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/phone/CityIdInfo;
    .locals 2
    .parameter "context"
    .parameter "phoneNumber"
    .parameter "isNanpNetwork"

    .prologue
    .line 3806
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    .line 3807
    :cond_0
    const/4 v1, 0x0

    .line 3812
    :goto_0
    return-object v1

    .line 3809
    :cond_1
    new-instance v0, Lcom/android/phone/CityIdInfo;

    invoke-direct {v0}, Lcom/android/phone/CityIdInfo;-><init>()V

    .line 3810
    .local v0, cidInfo:Lcom/android/phone/CityIdInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/android/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    move-object v1, v0

    .line 3812
    goto :goto_0
.end method

.method public static redialLastOutgoingNumber()V
    .locals 6

    .prologue
    .line 2552
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getLastOutgoingNumber()Ljava/lang/String;

    move-result-object v2

    .line 2553
    .local v2, phNum:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2554
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2556
    .local v0, dialIntent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2558
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2566
    .end local v0           #dialIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2559
    .restart local v0       #dialIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2560
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "redialLastOutgoingNumber: caught exception while redialing last number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2563
    .end local v0           #dialIntent:Landroid/content/Intent;
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    sget-boolean v3, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "No recent outgoing calls to redial"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static resetNewCallsFlag()V
    .locals 1

    .prologue
    .line 3719
    new-instance v0, Lcom/android/phone/PhoneUtils$7;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$7;-><init>()V

    invoke-virtual {v0}, Lcom/android/phone/PhoneUtils$7;->start()V

    .line 3735
    return-void
.end method

.method static restoreMuteState()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 909
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 912
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 915
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_5

    .line 917
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 920
    .local v2, phoneType:I
    const/4 v3, 0x0

    .line 926
    .local v3, shouldMute:Ljava/lang/Boolean;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 927
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #shouldMute:Ljava/lang/Boolean;
    check-cast v3, Ljava/lang/Boolean;

    .line 933
    .restart local v3       #shouldMute:Ljava/lang/Boolean;
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 934
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "problem retrieving mute value for this connection."

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 935
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 939
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    move-object v4, v3

    .line 942
    .end local v2           #phoneType:I
    .end local v3           #shouldMute:Ljava/lang/Boolean;
    :goto_1
    return-object v4

    .line 929
    .restart local v2       #phoneType:I
    .restart local v3       #shouldMute:Ljava/lang/Boolean;
    :cond_3
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 931
    :cond_4
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #shouldMute:Ljava/lang/Boolean;
    check-cast v3, Ljava/lang/Boolean;

    .restart local v3       #shouldMute:Ljava/lang/Boolean;
    goto :goto_0

    .line 942
    .end local v2           #phoneType:I
    .end local v3           #shouldMute:Ljava/lang/Boolean;
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1
.end method

.method static restoreSpeakerMode(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2174
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreSpeakerMode, restoring to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2177
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    if-eq v0, v1, :cond_1

    .line 2178
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2180
    :cond_1
    return-void
.end method

.method static retrieveLatestCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 4
    .parameter "context"
    .parameter "c"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    const/4 v3, 0x0

    .line 2009
    if-nez p1, :cond_1

    .line 2010
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "retrieveLatestCallerInfo: Connection is null; return trivial CIT"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2012
    :cond_0
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2013
    .local v0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iput-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    .line 2014
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    move-object v2, v0

    .line 2031
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :goto_0
    return-object v2

    .line 2018
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 2019
    .local v1, userData:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_3

    .line 2020
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "retrieveLatestCallerInfo: userData is a CallerInfoToken"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2021
    :cond_2
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1           #userData:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0

    .line 2022
    .restart local v1       #userData:Ljava/lang/Object;
    :cond_3
    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_5

    .line 2023
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "retrieveLatestCallerInfo: userData is a CallerInfo, create Token"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2024
    :cond_4
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2025
    .restart local v0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iput-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    .line 2026
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 2027
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    .end local v1           #userData:Ljava/lang/Object;
    iput-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v2, v0

    .line 2028
    goto :goto_0

    .line 2030
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v1       #userData:Ljava/lang/Object;
    :cond_5
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "retrieveLatestCallerInfo: userData is unknown, call startGetCallerInfo"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2031
    :cond_6
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    goto :goto_0
.end method

.method static sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 874
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 875
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 876
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 878
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneUtils"

    const-string v2, "onReceive: (CDMA) sending empty flash to network"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 882
    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_1
    return-void
.end method

.method static separateCall(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 979
    :try_start_0
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "separateCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 980
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    :goto_0
    return-void

    .line 981
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 982
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "separateCall: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static setApProfile(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "profile"

    .prologue
    .line 3571
    if-nez p0, :cond_1

    .line 3606
    :cond_0
    :goto_0
    return-void

    .line 3574
    :cond_1
    const/4 v1, 0x0

    .line 3575
    .local v1, parameter:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3578
    :pswitch_0
    const-string v1, "Normal"

    .line 3597
    :goto_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3598
    .local v0, aMgr:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 3604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "motoVoiceQualityConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 3582
    .end local v0           #aMgr:Landroid/media/AudioManager;
    :pswitch_1
    const-string v1, "Clear"

    .line 3583
    goto :goto_1

    .line 3586
    :pswitch_2
    const-string v1, "Crisp"

    .line 3587
    goto :goto_1

    .line 3590
    :pswitch_3
    const-string v1, "Bright"

    .line 3591
    goto :goto_1

    .line 3575
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static setApSettings(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 3554
    const-string v2, "ap_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3557
    .local v1, vqPref:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 3559
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3561
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 3563
    const-string v2, "voice_quality"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3564
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3567
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method static setAudioMode()V
    .locals 1

    .prologue
    .line 2255
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 2256
    return-void
.end method

.method static setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    .locals 7
    .parameter "cm"

    .prologue
    const-string v6, "PhoneUtils"

    .line 2262
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAudioMode()..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 2265
    .local v1, context:Landroid/content/Context;
    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2267
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .line 2268
    .local v3, modeBefore:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->setAudioMode()V

    .line 2269
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 2271
    .local v2, modeAfter:I
    if-eq v3, v2, :cond_2

    .line 2278
    :cond_1
    :goto_0
    return-void

    .line 2275
    :cond_2
    sget-boolean v4, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAudioMode() no change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->audioModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setConvertNumberFlex(I)V
    .locals 1
    .parameter "isFlexEnabled"

    .prologue
    .line 4090
    sget v0, Lcom/android/phone/PhoneUtils;->convertNumberEnabled:I

    if-ne p0, v0, :cond_0

    .line 4091
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->bConvertNumberEnabled:Z

    .line 4095
    :goto_0
    return-void

    .line 4093
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->bConvertNumberEnabled:Z

    goto :goto_0
.end method

.method static setFluence(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "flu_value"

    .prologue
    .line 3358
    if-nez p0, :cond_1

    .line 3384
    :cond_0
    :goto_0
    return-void

    .line 3362
    :cond_1
    const/4 v1, 0x0

    .line 3363
    .local v1, flu_string:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3365
    :pswitch_0
    const-string v1, "High"

    .line 3380
    :goto_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3381
    .local v0, aMgr:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 3382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "motoFluenceConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 3369
    .end local v0           #aMgr:Landroid/media/AudioManager;
    :pswitch_1
    const-string v1, "Medium"

    .line 3370
    goto :goto_1

    .line 3373
    :pswitch_2
    const-string v1, "Low"

    .line 3374
    goto :goto_1

    .line 3363
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static setMute(Z)V
    .locals 5
    .parameter "muted"

    .prologue
    .line 2212
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2215
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 2219
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2220
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2221
    sget-boolean v3, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "problem retrieving mute value for this connection."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2223
    :cond_0
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2225
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    :cond_1
    return-void
.end method

.method static setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    .locals 5
    .parameter "phone"
    .parameter "muted"

    .prologue
    const-string v4, "STATE"

    .line 2231
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMuteInternal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2233
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2234
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.mot.internal.intent.action.CALLING_MUTE_RESP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2235
    .local v1, intent:Landroid/content/Intent;
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 2236
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    .line 2237
    if-eqz p1, :cond_1

    .line 2238
    const-string v2, "STATE"

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2242
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2243
    return-void

    .line 2240
    :cond_1
    const-string v2, "STATE"

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method static showConfirmationMessage(IIIILandroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .parameter "title"
    .parameter "message"
    .parameter "posBtnLabel"
    .parameter "negBtnLabel"
    .parameter "btnListener"

    .prologue
    .line 3630
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3631
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, p4}, Lcom/android/phone/PhoneUtils;->showConfirmationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3637
    return-void
.end method

.method static showConfirmationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "posBtnLabel"
    .parameter "negBtnLabel"
    .parameter "btnListener"

    .prologue
    .line 3642
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3650
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 3651
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3652
    return-void
.end method

.method static showErrorMessage(I)V
    .locals 1
    .parameter "message"

    .prologue
    .line 3655
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->showErrorMessage(Ljava/lang/String;)V

    .line 3656
    return-void
.end method

.method static showErrorMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 3659
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0133

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3666
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 3667
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3668
    return-void
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 6
    .parameter "context"
    .parameter "call"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    .line 1644
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1645
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x0

    .line 1646
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 1647
    .local v2, phoneType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1648
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1656
    :goto_0
    invoke-static {p0, v1, p2, p3}, Lcom/android/phone/PhoneUtils;->retrieveLatestCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    return-object v3

    .line 1649
    :cond_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1651
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 1653
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 11
    .parameter "context"
    .parameter "c"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    .line 1667
    if-nez p1, :cond_0

    .line 1669
    new-instance p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local p0
    invoke-direct {p0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1670
    .local p0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    .end local p1
    move-object p1, p0

    .line 1827
    .end local p0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local p2
    .local p1, cit:Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 1703
    .local p0, context:Landroid/content/Context;
    .local p1, c:Lcom/android/internal/telephony/Connection;
    .restart local p2
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 1704
    .local v2, userDataObject:Ljava/lang/Object;
    instance-of v1, v2, Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 1706
    new-instance v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1707
    .local v1, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    new-instance v3, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1709
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isConvertNumberFlexEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isSpecialNumberEnable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1710
    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->ConvertBackDialingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1713
    :cond_1
    const/4 v4, -0x1

    move-object v0, v2

    check-cast v0, Landroid/net/Uri;

    move-object v3, v0

    sget-object v5, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v4, p0, v3, v5, p1}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/BlurCallerInfoAsyncQuery;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    iput-object p0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    .line 1715
    iget-object p0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    const/4 v3, -0x1

    invoke-virtual {p0, v3, p2, p3}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->addQueryListener(ILcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1716
    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1718
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1720
    sget-boolean p0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz p0, :cond_14

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "startGetCallerInfo: query based on Uri: "

    .end local p1           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object p0, v1

    .end local v1           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v2           #userDataObject:Ljava/lang/Object;
    .end local p2
    .local p0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_2
    :goto_1
    move-object p1, p0

    .line 1827
    .local p1, cit:Ljava/lang/Object;
    goto :goto_0

    .line 1722
    .restart local v2       #userDataObject:Ljava/lang/Object;
    .local p0, context:Landroid/content/Context;
    .local p1, c:Lcom/android/internal/telephony/Connection;
    .restart local p2
    :cond_3
    if-nez v2, :cond_a

    .line 1725
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1727
    .local v4, number:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isConvertNumberFlexEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isSpecialNumberEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1728
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->ConvertBackDialingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1731
    :cond_4
    new-instance v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v7}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1732
    .local v7, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v1, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1734
    iget-object v1, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {p0, p1, v1}, Lcom/android/phone/PhoneUtils;->storeCnapInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)V

    .line 1737
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1741
    iget-object v1, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v1, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .end local v2           #userDataObject:Ljava/lang/Object;
    if-eq v1, v2, :cond_6

    .line 1742
    const/4 p0, 0x1

    iput-boolean p0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1761
    .end local p0           #context:Landroid/content/Context;
    :goto_2
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1763
    sget-boolean p0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "startGetCallerInfo: query based on number: "

    .end local p1           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    :cond_5
    move-object p0, v7

    .line 1765
    .end local v7           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .local p0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    goto :goto_1

    .line 1744
    .restart local v7       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #c:Lcom/android/internal/telephony/Connection;
    :cond_6
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "==> Actually starting CallerInfoAsyncQuery.startQuery()..."

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1745
    :cond_7
    const/4 v1, -0x1

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object v2, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/BlurCallerInfoAsyncQuery;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    iput-object p0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    .line 1748
    iget-object p0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->addQueryListener(ILcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1749
    const/4 p0, 0x0

    iput-boolean p0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_2

    .line 1757
    .restart local v2       #userDataObject:Ljava/lang/Object;
    .restart local p0       #context:Landroid/content/Context;
    :cond_8
    sget-boolean p0, Lcom/android/phone/PhoneUtils;->DBG:Z

    .end local p0           #context:Landroid/content/Context;
    if-eqz p0, :cond_9

    const-string p0, "startGetCallerInfo: No query to start, send trivial reply."

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1758
    :cond_9
    const/4 p0, 0x1

    iput-boolean p0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_2

    .line 1765
    .end local v4           #number:Ljava/lang/String;
    .end local v7           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local p0       #context:Landroid/content/Context;
    :cond_a
    instance-of v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_13

    .line 1767
    move-object v0, v2

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v1, v0

    .line 1770
    .restart local v1       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    .end local v2           #userDataObject:Ljava/lang/Object;
    if-eqz v2, :cond_c

    .line 1771
    iget-object p0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    .end local p0           #context:Landroid/content/Context;
    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->addQueryListener(ILcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1773
    .end local p1           #c:Lcom/android/internal/telephony/Connection;
    sget-boolean p0, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz p0, :cond_14

    .line 1774
    if-eqz p2, :cond_b

    .line 1775
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "startGetCallerInfo: query already running, adding listener: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object p0, v1

    .end local v1           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .local p0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    goto/16 :goto_1

    .line 1779
    .end local p0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v1       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_b
    const-string p0, "startGetCallerInfo: query already running, listener is null"

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object p0, v1

    .end local v1           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local p0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    goto/16 :goto_1

    .line 1785
    .restart local v1       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #c:Lcom/android/internal/telephony/Connection;
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 1786
    .local v8, updatedNumber:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: updatedNumber initially = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1788
    :cond_d
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isConvertNumberFlexEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isSpecialNumberEnable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1789
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->ConvertBackDialingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1792
    :cond_e
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1794
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {p0, p1, v2}, Lcom/android/phone/PhoneUtils;->storeCnapInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)V

    .line 1799
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v2, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v2, v3, :cond_f

    .line 1800
    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .end local p0           #context:Landroid/content/Context;
    .end local p1           #c:Lcom/android/internal/telephony/Connection;
    .end local p2
    :goto_3
    move-object p0, v1

    .line 1818
    .end local v1           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .local p0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    goto/16 :goto_1

    .line 1802
    .restart local v1       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #c:Lcom/android/internal/telephony/Connection;
    .restart local p2
    :cond_f
    const/4 v5, -0x1

    sget-object v7, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object v6, p0

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/BlurCallerInfoAsyncQuery;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    iput-object p0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    .line 1805
    iget-object p0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->addQueryListener(ILcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1806
    .end local p1           #c:Lcom/android/internal/telephony/Connection;
    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_3

    .line 1809
    .restart local p0       #context:Landroid/content/Context;
    .restart local p1       #c:Lcom/android/internal/telephony/Connection;
    :cond_10
    sget-boolean p2, Lcom/android/phone/PhoneUtils;->DBG:Z

    .end local p2
    if-eqz p2, :cond_11

    const-string p2, "startGetCallerInfo: No query to attach to, send trivial reply."

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1810
    :cond_11
    iget-object p2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez p2, :cond_12

    .line 1811
    new-instance p2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {p2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object p2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1814
    :cond_12
    iget-object p2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {p0, p1, p2}, Lcom/android/phone/PhoneUtils;->storeCnapInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)V

    .line 1816
    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_3

    .line 1820
    .end local v1           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v8           #updatedNumber:Ljava/lang/String;
    .restart local v2       #userDataObject:Ljava/lang/Object;
    .restart local p2
    :cond_13
    new-instance p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local p0           #context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1821
    .local p0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    .end local v2           #userDataObject:Ljava/lang/Object;
    iput-object v2, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1822
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    .line 1823
    .end local p1           #c:Lcom/android/internal/telephony/Connection;
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1825
    sget-boolean p1, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz p1, :cond_2

    const-string p1, "startGetCallerInfo: query already done, returning CallerInfo"

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local p0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v1       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_14
    move-object p0, v1

    .end local v1           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local p0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    goto/16 :goto_1
.end method

.method static startNewCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .parameter "cm"

    .prologue
    .line 2110
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2111
    const-string v1, "PhoneUtils"

    const-string v2, "startNewCall: can\'t add a new call in the current state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 2133
    :goto_0
    return-void

    .line 2124
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2125
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2130
    const-string v1, "add_call_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2132
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static storeCnapInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 4
    .parameter "context"
    .parameter "c"
    .parameter "ci"

    .prologue
    const-string v3, ", presentation="

    .line 1940
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "storeCnapInfo()..."

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1941
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 1996
    :cond_1
    :goto_0
    return-void

    .line 1944
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1946
    .local v0, number:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isConvertNumberFlexEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpecialNumberEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1947
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->ConvertBackDialingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1950
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 1953
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1954
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1958
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    iput v1, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1959
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v1

    iput v1, p2, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1964
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1967
    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1974
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1976
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1978
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeCnapInfo: retrieved from Connection: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", presentation="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1984
    :cond_8
    iget v1, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v1, v2, :cond_9

    .line 1985
    iget v1, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1991
    :cond_9
    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget v2, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, p2, v1, v2}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1994
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeCnapInfo: final modified values: phoneNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", presentation="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter "heldCall"

    .prologue
    .line 889
    :try_start_0
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "switchHoldingAndActive"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 890
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 891
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 893
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 898
    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 902
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :goto_1
    return-void

    .line 896
    .restart local v0       #cm:Lcom/android/internal/telephony/CallManager;
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 899
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 900
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchHoldingAndActive: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static turnOnSpeaker(Landroid/content/Context;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "flag"
    .parameter "store"

    .prologue
    .line 2136
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turnOnSpeaker(flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", store="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2137
    :cond_0
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2139
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 2141
    if-eqz p2, :cond_1

    .line 2142
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 2144
    :cond_1
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sIsSpeakerEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2145
    :cond_2
    if-eqz p1, :cond_4

    .line 2146
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    .line 2155
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2156
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2159
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 2161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2164
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->sendAudioRouteChange()V

    .line 2166
    :cond_3
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/CallManager;->setEchoSuppressionEnabled(Z)V

    .line 2167
    return-void

    .line 2148
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_4
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method

.method static unlockLibCamera()V
    .locals 2

    .prologue
    .line 3435
    const-string v0, "> setting libcamera.emergency.lock to 0"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3436
    const-string v0, "libcamera.emergency.lock"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3437
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sLibCameraLocked:Z

    .line 3438
    return-void
.end method

.method private static updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-nez v0, :cond_0

    .line 686
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_1

    .line 679
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    goto :goto_0

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    goto :goto_0
.end method

.method static updateIsSpeakerEnabled(Z)V
    .locals 0
    .parameter "speakerState"

    .prologue
    .line 2188
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 2189
    return-void
.end method

.method static updateRestoreBtAudio(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 2193
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->mRestoreBTAudio:Z

    .line 2194
    return-void
.end method

.method static validateClearCodes(Lcom/android/internal/telephony/Connection$DisconnectCause;)I
    .locals 3
    .parameter "cause"

    .prologue
    .line 3396
    sget-object v1, Lcom/android/phone/PhoneUtils$8;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3413
    const v0, 0x7f0b0300

    .line 3416
    .local v0, resID:I
    :goto_0
    return v0

    .line 3399
    .end local v0           #resID:I
    :pswitch_0
    const v0, 0x7f0b047f

    .line 3400
    .restart local v0       #resID:I
    goto :goto_0

    .line 3402
    .end local v0           #resID:I
    :pswitch_1
    const v0, 0x7f0b0480

    .line 3403
    .restart local v0       #resID:I
    goto :goto_0

    .line 3406
    .end local v0           #resID:I
    :pswitch_2
    const-string v1, "CLEAR_CODE PhoneUtils featureOn noUserResponding"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3407
    const v0, 0x7f0b0481

    .line 3408
    .restart local v0       #resID:I
    goto :goto_0

    .line 3410
    .end local v0           #resID:I
    :pswitch_3
    const v0, 0x7f0b0482

    .line 3411
    .restart local v0       #resID:I
    goto :goto_0

    .line 3396
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
