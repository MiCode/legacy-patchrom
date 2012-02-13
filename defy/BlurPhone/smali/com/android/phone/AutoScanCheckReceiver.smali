.class public Lcom/android/phone/AutoScanCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoScanCheckReceiver.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "AutoScanCheckReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/AutoScanCheckReceiver;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private invokeScan()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 90
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const/16 v2, 0x9

    new-array v0, v2, [B

    .line 93
    .local v0, aRilRequestInfo:[B
    aput-byte v4, v0, v3

    .line 96
    aput-byte v6, v0, v4

    .line 97
    const/4 v2, 0x2

    aput-byte v3, v0, v2

    .line 98
    aput-byte v5, v0, v5

    .line 99
    const/4 v2, 0x4

    aput-byte v3, v0, v2

    .line 100
    aput-byte v3, v0, v6

    .line 101
    const/4 v2, 0x6

    aput-byte v3, v0, v2

    .line 102
    const/4 v2, 0x7

    aput-byte v4, v0, v2

    .line 103
    const/16 v2, 0x8

    aput-byte v4, v0, v2

    .line 106
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 107
    return-void
.end method

.method private isScanNecessary()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 112
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 114
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 115
    .local v3, state:Landroid/telephony/ServiceState;
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 117
    .local v1, serviceState:I
    sget-boolean v4, Lcom/android/phone/AutoScanCheckReceiver;->DBG:Z

    if-eqz v4, :cond_0

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, serviceStateStr:Ljava/lang/String;
    const-string v4, "Service State="

    invoke-direct {p0, v4}, Lcom/android/phone/AutoScanCheckReceiver;->log(Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, v2}, Lcom/android/phone/AutoScanCheckReceiver;->log(Ljava/lang/String;)V

    .line 125
    .end local v2           #serviceStateStr:Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_2

    .line 127
    sget-boolean v4, Lcom/android/phone/AutoScanCheckReceiver;->DBG:Z

    if-eqz v4, :cond_1

    .line 128
    const-string v4, "PHONE IN SERVICE - NO SCAN INVOKED."

    invoke-direct {p0, v4}, Lcom/android/phone/AutoScanCheckReceiver;->log(Ljava/lang/String;)V

    :cond_1
    move v4, v6

    .line 151
    :goto_0
    return v4

    .line 134
    :cond_2
    if-eq v1, v7, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    .line 137
    sget-boolean v4, Lcom/android/phone/AutoScanCheckReceiver;->DBG:Z

    if-eqz v4, :cond_3

    .line 138
    const-string v4, "PHONE NOT IN EMERGENCY OR OUT OF SERVICE STATE - NO SCAN INVOKED."

    invoke-direct {p0, v4}, Lcom/android/phone/AutoScanCheckReceiver;->log(Ljava/lang/String;)V

    :cond_3
    move v4, v6

    .line 139
    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 146
    sget-boolean v4, Lcom/android/phone/AutoScanCheckReceiver;->DBG:Z

    if-eqz v4, :cond_5

    const-string v4, "MANUAL MODE - NO SCAN INVOKED."

    invoke-direct {p0, v4}, Lcom/android/phone/AutoScanCheckReceiver;->log(Ljava/lang/String;)V

    :cond_5
    move v4, v6

    .line 147
    goto :goto_0

    :cond_6
    move v4, v7

    .line 151
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 156
    const-string v0, "AutoScanCheckReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    .line 44
    sget-boolean v2, Lcom/android/phone/AutoScanCheckReceiver;->DBG:Z

    if-eqz v2, :cond_0

    .line 45
    const-string v2, "Entering onReceive."

    invoke-direct {p0, v2}, Lcom/android/phone/AutoScanCheckReceiver;->log(Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    :cond_1
    sget-boolean v2, Lcom/android/phone/AutoScanCheckReceiver;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/AutoScanCheckReceiver;->log(Ljava/lang/String;)V

    .line 61
    :cond_2
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 68
    .local v1, myConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 70
    sget-boolean v2, Lcom/android/phone/AutoScanCheckReceiver;->DBG:Z

    if-eqz v2, :cond_3

    .line 71
    const-string v2, "Received CONFIGURATION_CHANGED but not a flip, no scan initiated."

    invoke-direct {p0, v2}, Lcom/android/phone/AutoScanCheckReceiver;->log(Ljava/lang/String;)V

    .line 85
    .end local v1           #myConfig:Landroid/content/res/Configuration;
    :cond_3
    :goto_0
    return-void

    .line 77
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/AutoScanCheckReceiver;->isScanNecessary()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    sget-boolean v2, Lcom/android/phone/AutoScanCheckReceiver;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "ATTEMPT_SCAN_AND_REGISTRATION invoked."

    invoke-direct {p0, v2}, Lcom/android/phone/AutoScanCheckReceiver;->log(Ljava/lang/String;)V

    .line 82
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/AutoScanCheckReceiver;->invokeScan()V

    goto :goto_0
.end method
