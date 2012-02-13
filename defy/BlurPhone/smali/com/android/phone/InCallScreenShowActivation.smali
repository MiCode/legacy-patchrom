.class public Lcom/android/phone/InCallScreenShowActivation;
.super Landroid/app/Activity;
.source "InCallScreenShowActivation.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EXTRA_USER_SKIP_PENDING_INTENT:Ljava/lang/String; = "ota_user_skip_pending_intent"

.field private static final LOG_TAG:Ljava/lang/String; = "InCallScreenShowActivation"


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 134
    new-instance v0, Lcom/android/phone/InCallScreenShowActivation$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreenShowActivation$1;-><init>(Lcom/android/phone/InCallScreenShowActivation;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreenShowActivation;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallScreenShowActivation;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreenShowActivation;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/InCallScreenShowActivation;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreenShowActivation;->sendOtaResult(Z)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 170
    const-string v0, "InCallScreenShowActivation"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 125
    sget-boolean v1, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "registerReceiver ..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreenShowActivation;->log(Ljava/lang/String;)V

    .line 126
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.phone.InCallScreen.OTA_CALL_ENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/android/phone/InCallScreenShowActivation;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InCallScreenShowActivation;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    return-void
.end method

.method private sendOtaResult(Z)V
    .locals 1
    .parameter "otaResult"

    .prologue
    .line 158
    if-eqz p1, :cond_1

    .line 159
    sget-boolean v0, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "sendOtaResult, return OK Result Blur setup"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreenShowActivation;->log(Ljava/lang/String;)V

    .line 160
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    .line 166
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->finish()V

    .line 167
    return-void

    .line 162
    :cond_1
    sget-boolean v0, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "sendOtaResult, return CANCEL Result Blur setup"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreenShowActivation;->log(Ljava/lang/String;)V

    .line 163
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v11, 0x0

    const-string v8, "phone"

    const-string v12, "Inappropriate launch of InCallScreenShowActivation"

    const-string v10, "InCallScreenShowActivation"

    const-string v9, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v5, -0x1

    .line 51
    .local v5, phoneType:I
    const-string v7, "phone"

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreenShowActivation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 54
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_1

    .line 55
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    .line 60
    :goto_0
    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 62
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-class v8, Lcom/android/phone/InCallScreen;

    invoke-virtual {v7, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 64
    .local v3, newIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreenShowActivation;->startActivity(Landroid/content/Intent;)V

    .line 110
    .end local v3           #newIntent:Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->finish()V

    .line 111
    :goto_2
    return-void

    .line 58
    :cond_1
    const/4 v5, -0x1

    goto :goto_0

    .line 66
    :cond_2
    const-string v7, "InCallScreenShowActivation"

    const-string v7, "Inappropriate launch of InCallScreenShowActivation"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 69
    :cond_3
    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/android/phone/InCallScreenShowActivation;->registerReceiver()V

    .line 72
    const-string v7, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 73
    .local v4, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez v4, :cond_4

    .line 74
    const-string v7, "InCallScreenShowActivation"

    const-string v7, "Error Accessing ITelephony Phone Interface "

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->finish()V

    goto :goto_2

    .line 84
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 85
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCdmaNeedsProvisioning()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 87
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-class v8, Lcom/android/phone/InCallScreen;

    invoke-virtual {v7, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 89
    .restart local v3       #newIntent:Landroid/content/Intent;
    sget-boolean v7, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v7, :cond_5

    const-string v7, "Launch InCallScreen for OTA Call"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreenShowActivation;->log(Ljava/lang/String;)V

    .line 92
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 93
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    const-string v7, "ota_user_skip_pending_intent"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    iput-object v7, v8, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->reportSkipPendingIntent:Landroid/app/PendingIntent;

    .line 96
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreenShowActivation;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 103
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #newIntent:Landroid/content/Intent;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 104
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "InCallScreenShowActivation"

    const-string v7, "Exception during OTA Activation launch "

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->finish()V

    goto/16 :goto_1

    .line 98
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_6
    :try_start_1
    sget-boolean v7, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v7, :cond_7

    const-string v7, "Inappropriate launch of InCallScreenShowActivation"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreenShowActivation;->log(Ljava/lang/String;)V

    .line 99
    :cond_7
    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->finish()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy ..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreenShowActivation;->log(Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreenShowActivation;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreenShowActivation;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 151
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreenShowActivation;->log(Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    return-void
.end method
