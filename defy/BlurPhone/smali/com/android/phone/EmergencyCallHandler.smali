.class public Lcom/android/phone/EmergencyCallHandler;
.super Landroid/app/Activity;
.source "EmergencyCallHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyCallHandler$1;,
        Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;,
        Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;
    }
.end annotation


# static fields
.field public static final EMERGENCY_CALL_RETRY_KEY:Ljava/lang/String; = "emergency_call_retry_count"

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x64

.field private static final EVENT_TIMEOUT_EMERGENCY_CALL:I = 0xc8

.field public static final INITIAL_ATTEMPT:I = -0x1

.field public static final NUMBER_OF_RETRIES:I = 0x6

.field public static final TIME_BETWEEN_RETRIES_MS:I = 0x1388

.field private static sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    return-void
.end method

.method private constructDialog(I)Landroid/app/ProgressDialog;
    .locals 4
    .parameter "retryCount"

    .prologue
    .line 189
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const v2, 0x7f0b0322

    move v0, v2

    .line 194
    .local v0, msgId:I
    :goto_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 195
    .local v1, pd:Landroid/app/ProgressDialog;
    const v2, 0x7f0b0321

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallHandler;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHandler;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 198
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 199
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 200
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 203
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 205
    return-object v1

    .line 189
    .end local v0           #msgId:I
    .end local v1           #pd:Landroid/app/ProgressDialog;
    :cond_0
    const v2, 0x7f0b0323

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v9, "emergency_call_retry_count"

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 114
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "emergency_call_retry_count"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 117
    .local v4, retryCount:I
    new-instance v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;

    invoke-direct {v0, v8}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;-><init>(Lcom/android/phone/EmergencyCallHandler$1;)V

    .line 118
    .local v0, eci:Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;
    iput-object v3, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 119
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getApplication()Landroid/app/Application;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->app:Landroid/app/Application;

    .line 120
    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHandler;->constructDialog(I)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->dialog:Landroid/app/ProgressDialog;

    .line 125
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    .line 129
    iget-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    sget-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    if-nez v5, :cond_0

    .line 133
    new-instance v5, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    invoke-direct {v5, v8}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;-><init>(Lcom/android/phone/EmergencyCallHandler$1;)V

    sput-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    .line 145
    :cond_0
    if-ne v4, v10, :cond_2

    .line 147
    iget-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const-string v6, "emergency_call_retry_count"

    const/4 v6, 0x6

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    sget-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    const/16 v6, 0x64

    invoke-interface {v3, v5, v6, v0}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "state"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyCallHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->finish()V

    .line 182
    return-void

    .line 168
    :cond_1
    invoke-interface {v3, v11}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const-string v6, "emergency_call_retry_count"

    sub-int v6, v4, v11

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    sget-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 178
    .local v2, m:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    sget-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
