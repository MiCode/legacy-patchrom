.class public Lcom/android/internal/telephony/gsm/GsmDataConnection;
.super Lcom/android/internal/telephony/DataConnection;
.source "GsmDataConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final PDP_FAIL_ACTIVATION_REJECT_GGSN:I = 0x1e

.field private static final PDP_FAIL_ACTIVATION_REJECT_UNSPECIFIED:I = 0x1f

.field private static final PDP_FAIL_ERROR_UNSPECIFIED:I = 0xffff

.field private static final PDP_FAIL_GPRS_REGISTRATION_FAIL:I = -0x2

.field private static final PDP_FAIL_INSUFFICIENT_RESOURCES:I = 0x1a

.field private static final PDP_FAIL_MISSING_UNKNOWN_APN:I = 0x1b

.field private static final PDP_FAIL_NSAPI_IN_USE:I = 0x23

.field private static final PDP_FAIL_OPERATOR_BARRED:I = 0x8

.field private static final PDP_FAIL_PROTOCOL_ERRORS:I = 0x6f

.field private static final PDP_FAIL_REGISTRATION_FAIL:I = -0x1

.field private static final PDP_FAIL_SERVICE_OPTION_NOT_SUBSCRIBED:I = 0x21

.field private static final PDP_FAIL_SERVICE_OPTION_NOT_SUPPORTED:I = 0x20

.field private static final PDP_FAIL_SERVICE_OPTION_OUT_OF_ORDER:I = 0x22

.field private static final PDP_FAIL_UNKNOWN_PDP_ADDRESS_TYPE:I = 0x1c

.field private static final PDP_FAIL_USER_AUTHENTICATION:I = 0x1d

.field static final PROFILE_CBS:I = 0x68

.field static final PROFILE_DEFAULT:I = 0x0

.field static final PROFILE_FOTA:I = 0x66

.field static final PROFILE_IMS:I = 0x65

.field static final PROFILE_INTERNET:I = 0x67

.field static final PROFILE_OEM_BASE:I = 0x3e8

.field static final PROFILE_TETHERED:I = 0x1


# instance fields
.field private apn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field private mProfileId:I


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    .locals 0
    .parameter "phone"
    .parameter "name"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    return-void
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method static makeDataConnection(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 3
    .parameter "phone"

    .prologue
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mCountLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mCount:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmDataConnection-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .local v0, gsmDc:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->start()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Made "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->log(Ljava/lang/String;)V

    return-object v0

    .end local v0           #gsmDc:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "httpProxy"
    .parameter "httpPort"

    .prologue
    const-string v3, "net.gprs.http-proxy"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "net.gprs.http-proxy"

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string p2, "8080"

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "net.gprs.http-proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected clearSettings()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnection;->clearSettings()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    return-void
.end method

.method public getApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    return-object v0
.end method

.method getCid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    return v0
.end method

.method protected getFailCauseFromRequest(I)Lcom/android/internal/telephony/DataConnection$FailCause;
    .locals 1
    .parameter "rilCause"

    .prologue
    sparse-switch p1, :sswitch_data_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .local v0, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :goto_0
    return-object v0

    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_3
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_4
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_5
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_6
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_7
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_8
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_9
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_a
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_b
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_c
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_d
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_e
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_e
        -0x1 -> :sswitch_d
        0x8 -> :sswitch_0
        0x1a -> :sswitch_1
        0x1b -> :sswitch_2
        0x1c -> :sswitch_3
        0x1d -> :sswitch_4
        0x1e -> :sswitch_5
        0x1f -> :sswitch_6
        0x20 -> :sswitch_8
        0x21 -> :sswitch_9
        0x22 -> :sswitch_7
        0x23 -> :sswitch_a
        0x6f -> :sswitch_b
        0xffff -> :sswitch_c
    .end sparse-switch
.end method

.method getProfileId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mProfileId:I

    return v0
.end method

.method protected isDnsOk([Ljava/lang/String;)Z
    .locals 4
    .parameter "domainNameServers"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "0.0.0.0"

    const-string v0, "0.0.0.0"

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0.0.0.0"

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
    .locals 12
    .parameter "cp"

    .prologue
    const-wide/16 v10, -0x1

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v3, ""

    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting to carrier: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' APN: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' proxy: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' port: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->isSinglePdpOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/ApnSetting;->port:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-wide v10, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    iput-wide v10, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .local v8, msg:Landroid/os/Message;
    iput-object p1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget v9, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->authType:I

    .local v9, authType:I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->user:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v9, v5

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .local v7, protocol:Ljava/lang/String;
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mProfileId:I

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mProfileId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    const-string v4, ""

    const-string v4, ""

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v3

    move-object v5, v3

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :goto_2
    return-void

    .end local v7           #protocol:Ljava/lang/String;
    :cond_2
    move v9, v6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->protocol:Ljava/lang/String;

    .restart local v7       #protocol:Ljava/lang/String;
    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, tech:Ljava/lang/String;
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mProfileId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/ApnSetting;->user:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/ApnSetting;->password:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    .end local v1           #tech:Ljava/lang/String;
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #tech:Ljava/lang/String;
    goto :goto_3
.end method

.method setProfileId(I)V
    .locals 0
    .parameter "profileId"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mProfileId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Apn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " create="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
