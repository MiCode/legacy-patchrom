.class public Landroid/net/wifi/WifiWisprClient;
.super Landroid/os/Handler;
.source "WifiWisprClient.java"


# static fields
.field private static final ABORT_RESPONSE_MESSAGE_TYPE:I = 0x96

.field private static final AUTHENTICATION_NOTIFICATION_MESSAGE_TYPE:I = 0x78

.field private static final AUTHENTICATION_PENDING_CODE:I = 0xc9

.field private static final AUTHENTICATION_RESPONSE_MESSAGE_TYPE:I = 0x8c

.field private static final EVENT_ABORT_LOGIN:I = 0x4

.field private static final EVENT_AUTH_POLL:I = 0x3

.field private static final EVENT_LOGIN_START:I = 0x1

.field private static final EVENT_LOGOFF:I = 0x5

.field private static final EVENT_PROXY_START:I = 0x2

.field private static final GATEWAY_INTERNAL_ERROR_CODE:I = 0xff

#the value of this static final field might be set in the static constructor
.field private static final HOTSPOT_ENABLED:Z = false

.field public static final ICON_HOTSPOT_LOGIN_FAIL:I = 0x10802cd

.field public static final ICON_HOTSPOT_LOGIN_SUCCESS:I = 0x10802ce

.field private static final INITIAL_GET_URL:Ljava/lang/String; = "http://rsc.att.com/library/test/success.html"

.field private static final INITIAL_PROBE_RETRY_LIMIT:I = 0x5

.field private static final INITIAL_REDIRECT_MESSAGE_TYPE:I = 0x64

.field private static final IP_ADDR_TAG:Ljava/lang/String; = "IpAddr="

.field private static final LOGIN_ABORTED_CODE:I = 0x97

.field private static final LOGIN_FAILED_CODE:I = 0x64

.field private static final LOGIN_SUCCEEDED_CODE:I = 0x32

.field private static final LOGOFF_NOTIFICATION_MESSAGE_TYPE:I = 0x82

.field private static final LOGOFF_SUCCEEDED_CODE:I = 0x96

.field private static final MAC_ADDR_TAG:Ljava/lang/String; = "MacAddr="

.field private static final NETWORK_ADMIN_ERROR_CODE:I = 0x69

.field public static final NOTIFY_HOTSPOT_AUTHENTICATION_FAILED:I = 0x3

.field public static final NOTIFY_HOTSPOT_NETWORK_FAILED:I = 0x2

.field public static final NOTIFY_HOTSPOT_NONE:I = -0x1

.field public static final NOTIFY_HOTSPOT_NOSIM_FAILED:I = 0x4

.field public static final NOTIFY_HOTSPOT_SUCCESS:I = 0x1

.field private static final NO_ERROR_CODE:I = 0x0

.field private static final NO_SIM_RETRY_LIMIT:I = 0xf

.field private static final NO_WISPR_MESSAGE_FOUND:I = -0x1

.field private static final PARAM_NOT_DEFINED:I = -0x1

.field private static final PARAM_SEPERATOR_TAG:Ljava/lang/String; = "&amp;"

.field private static final PROXY_DETECTION_CODE:I = 0xc8

.field private static final PROXY_NOTIFICATION_MESSAGE_TYPE:I = 0x6e

.field private static final RADIUS_SERVER_CODE:I = 0x66

.field private static final SESSION_ERROR_TIMEOUT:I = -0x2

.field private static final SESSION_RETRY_INTERVAL:I = 0x7d0

.field private static final SESSION_RETRY_LIMIT:I = 0x3

.field private static final SESSION_TIMEOUT_INTERVAL:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "WifiWisprClient"

.field private static final VALUE_SEPERATOR_TAG:Ljava/lang/String; = "="

.field public static final WISPR_ABORT_FAILED:I = 0x1fb

.field public static final WISPR_ABORT_SUCCESSFUL:I = 0x1fa

.field public static final WISPR_LOGIN_FAILED_AUTHENTICATION:I = 0x1f6

.field public static final WISPR_LOGIN_FAILED_NETWORK:I = 0x1f5

.field public static final WISPR_LOGIN_FAILED_NOSIM:I = 0x1f7

.field public static final WISPR_LOGIN_SUCCESSFUL:I = 0x1f4

.field public static final WISPR_LOGOFF_FAILED:I = 0x1f9

.field public static final WISPR_LOGOFF_SUCCESSFUL:I = 0x1f8

.field public static mHotSpotNotifType:I


# instance fields
.field private ABORT_URL_PARAM:Ljava/lang/String;

.field private ACCESS_LOCATION_PARAM:Ljava/lang/String;

.field private ACCESS_PROCEDURE_PARAM:Ljava/lang/String;

.field private AUTHENTICATION_SEED_PARAM:Ljava/lang/String;

.field private DELAY_PARAM:Ljava/lang/String;

.field private LOCATION_NAME_PARAM:Ljava/lang/String;

.field private LOGINRESULTS_URL_PARAM:Ljava/lang/String;

.field private LOGIN_URL_PARAM:Ljava/lang/String;

.field private LOGOFF_URL_PARAM:Ljava/lang/String;

.field private MESSAGE_TYPE_PARAM:Ljava/lang/String;

.field private NEXT_URL_PARAM:Ljava/lang/String;

.field private REPLY_MESSAGE_PARAM:Ljava/lang/String;

.field private RESPONSE_CODE_PARAM:Ljava/lang/String;

.field private WISP_ACCESS_GATEWAY_PARAM:Ljava/lang/String;

.field private mAbortLogin:Z

.field private mAbortLoginUrl:Ljava/lang/String;

.field private mAccessLocation:Ljava/lang/String;

.field private mAccessProcedure:Ljava/lang/String;

.field private mAuthSeed:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDelay:I

.field private mInitialGetURL:Ljava/lang/String;

.field private mInitialRetryCounter:I

.field private mIpAddr:Ljava/lang/String;

.field private mLocationName:Ljava/lang/String;

.field private mLogOffUrl:Ljava/lang/String;

.field private mLoginResultsUrl:Ljava/lang/String;

.field private mLoginUrl:Ljava/lang/String;

.field private mMacAddr:Ljava/lang/String;

.field private mMessageType:I

.field private mMsgType:Ljava/lang/String;

.field private mPassWord:Ljava/lang/String;

.field private mResponseCode:I

.field private mRetryCounter:I

.field private mRspCode:Ljava/lang/String;

.field private mSIMmsisdn:Ljava/lang/String;

.field private mServerResponse:Ljava/lang/String;

.field private mSignature:Ljava/lang/String;

.field private mTarget:Landroid/os/Handler;

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    sput v0, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    const-string v0, "ro.mot.wifi.hotspot"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/net/wifi/WifiWisprClient;->HOTSPOT_ENABLED:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "looper"
    .parameter "target"

    .prologue
    const-string v1, ""

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, ""

    iput-object v1, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/net/wifi/WifiWisprClient;->mIpAddr:Ljava/lang/String;

    const-string v0, "http://rsc.att.com/library/test/success.html"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mInitialGetURL:Ljava/lang/String;

    const-string v0, "5551234567"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mUserName:Ljava/lang/String;

    const-string v0, "2b00042f7481c7b056c4b410d28f33cf"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mPassWord:Ljava/lang/String;

    const-string v0, "WISPAccessGatewayParam>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->WISP_ACCESS_GATEWAY_PARAM:Ljava/lang/String;

    const-string v0, "AccessProcedure>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ACCESS_PROCEDURE_PARAM:Ljava/lang/String;

    const-string v0, "AccessLocation>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ACCESS_LOCATION_PARAM:Ljava/lang/String;

    const-string v0, "LocationName>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOCATION_NAME_PARAM:Ljava/lang/String;

    const-string v0, "LoginURL>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGIN_URL_PARAM:Ljava/lang/String;

    const-string v0, "AbortLoginURL>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ABORT_URL_PARAM:Ljava/lang/String;

    const-string v0, "MessageType>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->MESSAGE_TYPE_PARAM:Ljava/lang/String;

    const-string v0, "AuthenticationSeed>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->AUTHENTICATION_SEED_PARAM:Ljava/lang/String;

    const-string v0, "ResponseCode>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    const-string v0, "NextURL>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->NEXT_URL_PARAM:Ljava/lang/String;

    const-string v0, "Delay>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->DELAY_PARAM:Ljava/lang/String;

    const-string v0, "ReplyMessage>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->REPLY_MESSAGE_PARAM:Ljava/lang/String;

    const-string v0, "LoginResultsURL>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGINRESULTS_URL_PARAM:Ljava/lang/String;

    const-string v0, "LogoffURL>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGOFF_URL_PARAM:Ljava/lang/String;

    const-string v0, "s9o3j9324oi234uo"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mSignature:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    iput-object p1, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static checkIfHotSpot(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 12
    .parameter "ssid"
    .parameter "context"

    .prologue
    const/16 v11, 0x22

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-boolean v7, Landroid/net/wifi/WifiWisprClient;->HOTSPOT_ENABLED:Z

    if-eqz v7, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x7

    if-ge v7, v8, :cond_1

    :cond_0
    move v7, v9

    :goto_0
    return v7

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v2, v7, v10

    .local v2, lastPos:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, cr:Landroid/content/ContentResolver;
    const-string v7, "wifi_hotspot_mask_ssid"

    invoke-static {v1, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, mHotSpotMask:Ljava/lang/String;
    const-string v7, "wifi_hotspot_ssid_1"

    invoke-static {v1, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, mHotSpot1:Ljava/lang/String;
    const-string v7, "wifi_hotspot_ssid_2"

    invoke-static {v1, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, mHotSpot2:Ljava/lang/String;
    const-string v7, "wifi_hotspot_ssid_3"

    invoke-static {v1, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, mHotSpot3:Ljava/lang/String;
    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    :cond_2
    move v7, v9

    goto :goto_0

    :cond_3
    const/4 v7, 0x2

    if-lt v2, v7, :cond_4

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_6

    :cond_4
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, checkString:Ljava/lang/String;
    :goto_1
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    move v7, v10

    goto :goto_0

    .end local v0           #checkString:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #checkString:Ljava/lang/String;
    goto :goto_1

    :cond_7
    move v7, v9

    goto :goto_0
.end method

.method private cleanString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "taggedString"

    .prologue
    const-string v8, "?"

    const-string v7, ":"

    const-string v6, "/"

    const-string v5, "."

    const-string v4, "-"

    const-string v1, "%3A"

    const-string v2, ":"

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2F"

    const-string v3, "/"

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%3F"

    const-string v3, "?"

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2E"

    const-string v3, "."

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2D"

    const-string v3, "-"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, cleanedString:Ljava/lang/String;
    const-string v1, "%3a"

    const-string v2, ":"

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2f"

    const-string v3, "/"

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%3f"

    const-string v3, "?"

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2e"

    const-string v3, "."

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2d"

    const-string v3, "-"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clearHotSpotNotification(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "mNotificationShown"

    .prologue
    const/4 v3, 0x1

    const-string v2, "WifiWisprClient"

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v1, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    if-ne v1, v3, :cond_2

    const-string v1, "WifiWisprClient"

    const-string v1, "cancel(ICON_HOTSPOT_LOGIN_SUCCESS)"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x10802ce

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    :goto_1
    const/4 v1, -0x1

    sput v1, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    goto :goto_0

    :cond_2
    sget v1, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    if-le v1, v3, :cond_3

    const-string v1, "WifiWisprClient"

    const-string v1, "cancel(ICON_HOTSPOT_LOGIN_FAIL)"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x10802cd

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_1

    const-string v1, "WifiWisprClient"

    const-string v1, "cancel(ICON_NETWORKS_AVAILABLE)"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x10802db

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method private executeAuthRequestPost()I
    .locals 21

    .prologue
    const-string v18, "WISPR LOGIN request started"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    const/4 v10, 0x0

    .local v10, httpclient:Lorg/apache/http/client/HttpClient;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "?"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .local v12, loginEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    .local v17, postUrl:Ljava/lang/String;
    const-string v4, ""

    .local v4, content:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "="

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .local v5, contentPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mAuthSeed:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mSignature:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/net/wifi/WifiWisprClient;->getWisprHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiWisprClient;->mPassWord:Ljava/lang/String;

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v16, nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-lez v12, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v12, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWisprClient;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "LoginUrl Content = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/16 v18, -0x1

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const-string v18, "&amp;"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .local v15, nextContentPosition:I
    const/16 v18, -0x1

    move v0, v15

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const/16 v19, 0x0

    const-string v20, "="

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    move-object v0, v4

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "="

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object v0, v4

    move/from16 v1, v20

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v18, "&amp;"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v15

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v18, "="

    const/16 v19, 0x0

    move-object v0, v4

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    goto :goto_0

    :cond_1
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const/16 v19, 0x0

    const-string v20, "="

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    move-object v0, v4

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "="

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v15           #nextContentPosition:I
    :cond_2
    :goto_1
    :try_start_2
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "username"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mUserName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "password"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mPassWord:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Android."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ro.build.version.release"

    const-string v20, "unknown"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .local v13, mobileVersion:Ljava/lang/String;
    const-string v18, "ro.product.model"

    const-string v19, "unknown"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, modelId:Ljava/lang/String;
    const-string v3, "Motorola-WISPr1.0"

    .local v3, appVersion:Ljava/lang/String;
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "attdevicetype"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "attdeviceOS"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "attwifiversion"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v7, httpParams:Lorg/apache/http/params/HttpParams;
    const/16 v18, 0x2710

    move-object v0, v7

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v18, 0x2710

    move-object v0, v7

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v10           #httpclient:Lorg/apache/http/client/HttpClient;
    .local v11, httpclient:Lorg/apache/http/client/HttpClient;
    :try_start_3
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    new-instance v18, Ljava/net/URI;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .local v8, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v18, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    invoke-interface {v11, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .local v9, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiWisprClient;->getWisprMessageType()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AuthResponse= \n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " <Response> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v10, v11

    .end local v3           #appVersion:Ljava/lang/String;
    .end local v4           #content:Ljava/lang/String;
    .end local v5           #contentPosition:I
    .end local v7           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v8           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v9           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v11           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v12           #loginEnd:I
    .end local v13           #mobileVersion:Ljava/lang/String;
    .end local v14           #modelId:Ljava/lang/String;
    .end local v16           #nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v17           #postUrl:Ljava/lang/String;
    .restart local v10       #httpclient:Lorg/apache/http/client/HttpClient;
    :goto_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    move/from16 v18, v0

    return v18

    :catch_0
    move-exception v18

    move-object/from16 v6, v18

    .local v6, e1:Ljava/lang/Exception;
    :goto_3
    const/16 v18, -0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    const-string v18, "ProbeResponse== SESSION_ERROR_TIMEOUT\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    goto :goto_2

    .end local v6           #e1:Ljava/lang/Exception;
    .end local v10           #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v3       #appVersion:Ljava/lang/String;
    .restart local v4       #content:Ljava/lang/String;
    .restart local v5       #contentPosition:I
    .restart local v7       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v11       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v12       #loginEnd:I
    .restart local v13       #mobileVersion:Ljava/lang/String;
    .restart local v14       #modelId:Ljava/lang/String;
    .restart local v16       #nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v17       #postUrl:Ljava/lang/String;
    :catch_1
    move-exception v18

    move-object/from16 v6, v18

    move-object v10, v11

    .end local v11           #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v10       #httpclient:Lorg/apache/http/client/HttpClient;
    goto :goto_3

    .end local v3           #appVersion:Ljava/lang/String;
    .end local v7           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v13           #mobileVersion:Ljava/lang/String;
    .end local v14           #modelId:Ljava/lang/String;
    :catch_2
    move-exception v18

    goto/16 :goto_1
.end method

.method private executePostUrl(Ljava/lang/String;)I
    .locals 8
    .parameter "postUrl"

    .prologue
    const-string v6, "WISPR POST request started"

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, httpclient:Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v1, httpParams:Lorg/apache/http/params/HttpParams;
    const/16 v6, 0x2710

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v6, 0x2710

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #httpclient:Lorg/apache/http/client/HttpClient;
    .local v5, httpclient:Lorg/apache/http/client/HttpClient;
    :try_start_1
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " WISPR Posting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    invoke-interface {v5, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executePostRESPONSE= \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->getWisprMessageType()I

    move-result v6

    iput v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .end local v1           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v2           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v4       #httpclient:Lorg/apache/http/client/HttpClient;
    :goto_0
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    iget v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    return v6

    :catch_0
    move-exception v6

    move-object v0, v6

    .local v0, e1:Ljava/lang/Exception;
    :goto_1
    const/4 v6, -0x2

    iput v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    goto :goto_0

    .end local v0           #e1:Ljava/lang/Exception;
    .end local v4           #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v1       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v5       #httpclient:Lorg/apache/http/client/HttpClient;
    :catch_1
    move-exception v6

    move-object v0, v6

    move-object v4, v5

    .end local v5           #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v4       #httpclient:Lorg/apache/http/client/HttpClient;
    goto :goto_1
.end method

.method private executeProbeRequestGet()I
    .locals 8

    .prologue
    const-string v6, "WISPR PROBE request started"

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, httpclient:Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v1, httpParams:Lorg/apache/http/params/HttpParams;
    const/16 v6, 0x2710

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v6, 0x2710

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #httpclient:Lorg/apache/http/client/HttpClient;
    .local v4, httpclient:Lorg/apache/http/client/HttpClient;
    :try_start_1
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object v6, p0, Landroid/net/wifi/WifiWisprClient;->mInitialGetURL:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .local v5, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->getWisprMessageType()I

    move-result v6

    iput v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ProbeResponse= \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " <Response> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .end local v1           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v4           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v5           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpclient:Lorg/apache/http/client/HttpClient;
    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    iget v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    return v6

    :catch_0
    move-exception v6

    move-object v0, v6

    .local v0, e1:Ljava/lang/Exception;
    :goto_1
    const/4 v6, -0x2

    iput v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    const-string v6, "ProbeResponse= SESSION_ERROR_TIMEOUT\n"

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e1:Ljava/lang/Exception;
    .end local v3           #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v1       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v4       #httpclient:Lorg/apache/http/client/HttpClient;
    :catch_1
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v3       #httpclient:Lorg/apache/http/client/HttpClient;
    goto :goto_1
.end method

.method public static getPersistedHotSpotAutoConnect(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "wifi_hotspot_autoconnect"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "wifi_hotspot_autoconnect"

    invoke-static {v0, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v4, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
    const-string v2, "wifi_hotspot_autoconnect"

    invoke-static {v0, v5, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    goto :goto_0
.end method

.method private static native getWisprHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private getWisprMessageType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/WifiWisprClient;->WISP_ACCESS_GATEWAY_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/WifiWisprClient;->MESSAGE_TYPE_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->MESSAGE_TYPE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private handleAbortLoginResponse()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "LOGIN SUCCESS"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGOFF_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mLogOffUrl:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_1
    const-string v0, "LOGIN_ABORTED_CODE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1fa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleAuthPollResponse()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "LOGIN SUCCESS"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGOFF_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mLogOffUrl:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_1
    const-string v0, "LOGIN FAILURE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto :goto_0

    :sswitch_2
    const-string v0, "AUTH PENDING"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->DELAY_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    :cond_0
    const/4 v0, 0x3

    iget v1, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc9 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleLogOffResponse()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "LOGOFF FAILURE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "LOGOFF SUCCESS"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x96
        :pswitch_0
    .end packed-switch
.end method

.method private handleProxyNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const-string v0, "PROXY DETECTED - RETRY"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/WifiWisprClient;->NEXT_URL_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->NEXT_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mInitialGetURL:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->DELAY_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    if-ne v0, v2, :cond_1

    iput v3, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    :cond_1
    :goto_0
    const/4 v0, 0x2

    iget v1, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    iput v3, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    goto :goto_0
.end method

.method private logWisprMessage(Ljava/lang/String;)V
    .locals 6
    .parameter "msg"

    .prologue
    const-string v3, ""

    .local v3, srvDate:Ljava/lang/String;
    const-string v2, ""

    .local v2, logFile:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "MM.dd.HH.mm.ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiWisprClient."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0           #dateFormat:Ljava/text/SimpleDateFormat;
    :goto_0
    const-string v4, "WifiWisprClient"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private parseGetMacIpFromResponse(Ljava/lang/String;)V
    .locals 5
    .parameter "initialGetResponse"

    .prologue
    const/4 v4, -0x1

    const-string v2, "&amp;"

    const-string v2, "MacAddr="

    const-string v2, "IpAddr="

    :try_start_0
    const-string v2, "MacAddr="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_0

    const-string v2, "MacAddr="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "MacAddr="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    .local v1, startIndex:I
    const-string v2, "&amp;"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .local v0, endIndex:I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAC_ADDR="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .end local v0           #endIndex:I
    .end local v1           #startIndex:I
    :cond_0
    const-string v2, "IpAddr="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_1

    const-string v2, "IpAddr="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "IpAddr="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    .restart local v1       #startIndex:I
    const-string v2, "&amp;"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #endIndex:I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mIpAddr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP_ADDR="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mIpAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #endIndex:I
    .end local v1           #startIndex:I
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private parseHandleAuthNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authentication Failure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "LOGIN SUCCESS"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGOFF_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mLogOffUrl:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_1
    const-string v0, "LOGIN FAILURE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto :goto_0

    :sswitch_2
    const-string v0, "AUTH PENDING"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->DELAY_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    :cond_0
    const/4 v0, 0x3

    iget v1, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc9 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseProbeResponse()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ACCESS_PROCEDURE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mAccessProcedure:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ACCESS_LOCATION_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mAccessLocation:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOCATION_NAME_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mLocationName:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->AUTHENTICATION_SEED_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mAuthSeed:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGIN_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ABORT_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mAbortLoginUrl:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parseGetMacIpFromResponse(Ljava/lang/String;)V

    return-void
.end method

.method private parserGetWisprParamInt(Ljava/lang/String;)I
    .locals 2
    .parameter "Param"

    .prologue
    const/4 v1, -0x1

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "Param"

    .prologue
    const-string v1, "-3"

    .local v1, result:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v2, v3, v4

    .local v2, startIndex:I
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "</"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v0, v3, v4

    .local v0, endIndex:I
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #endIndex:I
    .end local v2           #startIndex:I
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private retryWisprRequest(I)V
    .locals 3
    .parameter "event"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const-string v0, "WifiWisprClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying: Attempt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Response Code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Msg Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1f6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private startLoginRequest()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "WifiWisprClient"

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    if-nez v2, :cond_3

    :cond_0
    iget v2, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v3, 0x1f7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v2, "WifiWisprClient"

    const-string v2, "Login Aborted -- No SIM/Invalid SIM"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETRY ATTEMPT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v4, v2, v3}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    const-string v2, "WifiWisprClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput v2, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@attmobilityandroid.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mUserName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSISDN Number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public cancelLogin()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiWisprClient;->mAbortLogin:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "WISPR START LOGIN"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    const-string v0, "http://rsc.att.com/library/test/success.html"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mInitialGetURL:Ljava/lang/String;

    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->startLoginRequest()V

    goto :goto_0

    :pswitch_1
    const-string v0, "WISPR START INITIAL PROBE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->executeProbeRequestGet()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "mMessageType == SESSION_ERROR_DEFAULT"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto :goto_0

    :sswitch_0
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mInitialRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiWisprClient;->mInitialRetryCounter:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const-string v0, "WISPR LOGGEDIN_..RECONFIRM"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const-string v0, "WISPR LOGGEDIN_..CONFIRMED"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->parseProbeResponse()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mResponseCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->executeAuthRequestPost()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->parseHandleAuthNotification()V

    goto :goto_0

    :cond_2
    const-string v0, "mMessageType != AUTHENTICATION_NOTIFICATION_MESSAGE_TYPE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto/16 :goto_0

    :sswitch_2
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->handleProxyNotification()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "mResponseCode != PROXY_DETECTION_CODE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "mMessageType == SESSION_ERROR_TIMEOUT"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_0
        0x64 -> :sswitch_1
        0x6e -> :sswitch_2
    .end sparse-switch
.end method

.method public setHotSpotNotification(IZ)V
    .locals 11
    .parameter "notifType"
    .parameter "mNotificationShown"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const v5, 0x1040489

    const v7, 0x10802cd

    const/4 v6, 0x0

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-nez v1, :cond_1

    const-string v2, "WifiWisprClient"

    const-string v3, "notificationManager == null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Landroid/net/wifi/WifiWisprClient;->clearHotSpotNotification(Landroid/content/Context;Z)V

    sput p1, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    sget v2, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    new-instance v0, Landroid/app/Notification;

    const v2, 0x10802ce

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v4, 0x1040487

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v0, v2, v3, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .local v0, notif:Landroid/app/Notification;
    const/16 v2, 0x20

    iput v2, v0, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v5, 0x1040487

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v8, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const v2, 0x10802ce

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .end local v0           #notif:Landroid/app/Notification;
    :cond_2
    sget v2, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    new-instance v0, Landroid/app/Notification;

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v3, 0x1040488

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v7, v2, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v0       #notif:Landroid/app/Notification;
    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v5, 0x104048a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v8, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .end local v0           #notif:Landroid/app/Notification;
    :cond_3
    sget v2, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    new-instance v0, Landroid/app/Notification;

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v3, 0x1040488

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v7, v2, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v0       #notif:Landroid/app/Notification;
    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v5, 0x104048a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v8, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .end local v0           #notif:Landroid/app/Notification;
    :cond_4
    sget v2, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    new-instance v0, Landroid/app/Notification;

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v3, 0x1040488

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v7, v2, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v0       #notif:Landroid/app/Notification;
    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v5, 0x104048a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v8, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method public startLogin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    :try_start_0
    const-string v1, "whash"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput v3, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    iput v3, p0, Landroid/net/wifi/WifiWisprClient;->mInitialRetryCounter:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "WifiWisprClient"

    const-string v2, "ERR: Could not load libwhash.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startLogoff()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    return-void
.end method
