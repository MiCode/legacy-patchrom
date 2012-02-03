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
.field private static sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    return-void
.end method

.method private constructDialog(I)Landroid/app/ProgressDialog;
    .locals 4
    .parameter "retryCount"

    .prologue
    .line 225
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const v2, 0x7f0d01a9

    move v0, v2

    .line 230
    .local v0, msgId:I
    :goto_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 231
    .local v1, pd:Landroid/app/ProgressDialog;
    const v2, 0x7f0d01a8

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallHandler;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHandler;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 233
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 234
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 235
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 236
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 239
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 241
    return-object v1

    .line 225
    .end local v0           #msgId:I
    .end local v1           #pd:Landroid/app/ProgressDialog;
    :cond_0
    const v2, 0x7f0d01aa

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v10, "emergency_call_retry_count"

    const-string v7, "EmergencyCallHandler"

    .line 122
    const-string v5, "EmergencyCallHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate()...  intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const-string v5, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 135
    const-string v5, "EmergencyCallHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected intent action!  Should be ACTION_CALL_EMERGENCY, but instead got: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 141
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "emergency_call_retry_count"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 144
    .local v4, retryCount:I
    new-instance v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;

    invoke-direct {v0, v9}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;-><init>(Lcom/android/phone/EmergencyCallHandler$1;)V

    .line 145
    .local v0, eci:Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;
    iput-object v3, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 146
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getApplication()Landroid/app/Application;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->app:Landroid/app/Application;

    .line 148
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 149
    const-string v5, "EmergencyCallHandler"

    const-string v5, "onCreate()...  create dialog "

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHandler;->constructDialog(I)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->dialog:Landroid/app/ProgressDialog;

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    .line 160
    iget-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 161
    const-string v5, "EmergencyCallHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- initial eci.intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    if-nez v5, :cond_2

    .line 165
    new-instance v5, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    invoke-direct {v5, v9}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;-><init>(Lcom/android/phone/EmergencyCallHandler$1;)V

    sput-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    .line 177
    :cond_2
    if-ne v4, v11, :cond_4

    .line 179
    iget-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const-string v6, "emergency_call_retry_count"

    const/4 v6, 0x6

    invoke-virtual {v5, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    sget-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    const/16 v6, 0x64

    invoke-interface {v3, v5, v6, v0}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_3

    .line 189
    const-string v5, "EmergencyCallHandler"

    const-string v5, "Turning off airplane mode..."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "state"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyCallHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->finish()V

    .line 218
    return-void

    .line 202
    :cond_3
    const-string v5, "EmergencyCallHandler"

    const-string v5, "Manually powering radio on..."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0

    .line 208
    :cond_4
    const-string v5, "EmergencyCallHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retry attempt...  retryCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const-string v6, "emergency_call_retry_count"

    const/4 v6, 0x1

    sub-int v6, v4, v6

    invoke-virtual {v5, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    sget-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 214
    .local v2, m:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 215
    sget-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 248
    const-string v0, "EmergencyCallHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected call to onNewIntent(): intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 250
    return-void
.end method
