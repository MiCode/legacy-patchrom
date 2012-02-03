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

.field private static final PDP_FAIL_MISSING_UKNOWN_APN:I = 0x1b

.field private static final PDP_FAIL_NSAPI_IN_USE:I = 0x23

.field private static final PDP_FAIL_OPERATOR_BARRED:I = 0x8

.field private static final PDP_FAIL_PROTOCOL_ERRORS:I = 0x6f

.field private static final PDP_FAIL_REGISTRATION_FAIL:I = -0x1

.field private static final PDP_FAIL_SERVICE_OPTION_NOT_SUBSCRIBED:I = 0x21

.field private static final PDP_FAIL_SERVICE_OPTION_NOT_SUPPORTED:I = 0x20

.field private static final PDP_FAIL_SERVICE_OPTION_OUT_OF_ORDER:I = 0x22

.field private static final PDP_FAIL_UNKNOWN_PDP_ADDRESS_TYPE:I = 0x1c

.field private static final PDP_FAIL_USER_AUTHENTICATION:I = 0x1d


# instance fields
.field private apn:Lcom/android/internal/telephony/gsm/ApnSetting;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)V
    .locals 0
    .parameter "phone"
    .parameter "name"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 241
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 243
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

.method static makeDataConnection(Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 3
    .parameter "phone"

    .prologue
    .line 69
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    sget v2, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mCount:I

    .line 71
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
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

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)V

    .line 73
    .local v0, gsmDc:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->start()V

    .line 74
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

    .line 75
    return-object v0

    .line 71
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
    const-string/jumbo v3, "net.gprs.http-proxy"

    .line 227
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string/jumbo v1, "net.gprs.http-proxy"

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void

    .line 232
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 233
    :cond_2
    const-string p2, "8080"

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string/jumbo v1, "net.gprs.http-proxy"

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
    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnection;->clearSettings()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 131
    return-void
.end method

.method public disconnect(Landroid/os/Message;)V
    .locals 3
    .parameter "onCompletedMsg"

    .prologue
    .line 124
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-direct {v1, p1, v2}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Landroid/os/Message;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 125
    return-void
.end method

.method public getApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    return-object v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    return v0
.end method

.method protected getFailCauseFromRequest(I)Lcom/android/internal/telephony/DataConnection$FailCause;
    .locals 1
    .parameter "rilCause"

    .prologue
    .line 144
    sparse-switch p1, :sswitch_data_0

    .line 191
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 193
    .local v0, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :goto_0
    return-object v0

    .line 146
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 147
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 149
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 150
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 152
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 153
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 155
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_3
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 156
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 158
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_4
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 159
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 161
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_5
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 162
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 164
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_6
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 165
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 167
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_7
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 168
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 170
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_8
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 171
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 173
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_9
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 174
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 176
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_a
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 177
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 179
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_b
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 180
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 182
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_c
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 183
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 185
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_d
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 186
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 188
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_e
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 189
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 144
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

.method protected isDnsOk([Ljava/lang/String;)Z
    .locals 4
    .parameter "domainNameServers"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "0.0.0.0"

    .line 198
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

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string/jumbo v1, "mms"

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

    .line 210
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
    .line 215
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

    .line 216
    return-void
.end method

.method protected onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
    .locals 9
    .parameter "cp"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 88
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting to carrier: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' APN: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' proxy: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' port: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->log(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->port:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    iput-wide v4, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    .line 99
    iput-wide v4, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    .line 100
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 103
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 104
    .local v7, msg:Landroid/os/Message;
    iput-object p1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget v8, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->authType:I

    .line 107
    .local v8, authType:I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->user:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v8, v3

    .line 112
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/ApnSetting;->user:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/ApnSetting;->password:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 115
    return-void

    :cond_2
    move v8, v2

    .line 109
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
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
