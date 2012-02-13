.class public final Lcom/android/internal/telephony/PhoneStateIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStateIntentReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final NOTIF_MAX:I = 0x20

.field private static final NOTIF_PHONE:I = 0x1

.field private static final NOTIF_SERVICE:I = 0x2

.field private static final NOTIF_SIGNAL:I = 0x4


# instance fields
.field private mAsuEventWhat:I

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mLocationEventWhat:I

.field mPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private mPhoneStateEventWhat:I

.field mServiceState:Landroid/telephony/ServiceState;

.field private mServiceStateEventWhat:I

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field private mTarget:Landroid/os/Handler;

.field private mWants:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "target"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->setContext(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->setTarget(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getNotifyPhoneCallState()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotifyServiceState()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotifySignalStrength()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneState()Lcom/android/internal/telephony/Phone$State;
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "client must call notifyPhoneCallState(int)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "client must call notifyServiceState(int)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getSignalStrength()I
    .locals 3

    .prologue
    iget v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "client must call notifySignalStrength(int)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .local v0, gsmSignalStrength:I
    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public getSignalStrengthDbm()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    iget v3, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "client must call notifySignalStrength(int)"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v1, -0x1

    .local v1, dBm:I
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .local v2, gsmSignalStrength:I
    const/16 v3, 0x63

    if-ne v2, v3, :cond_3

    move v0, v4

    .local v0, asu:I
    :goto_1
    if-eq v0, v4, :cond_1

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    goto :goto_0

    .end local v0           #asu:I
    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public notifyPhoneCallState(I)V
    .locals 2
    .parameter "eventWhat"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    iput p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneStateEventWhat:I

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public notifyServiceState(I)V
    .locals 2
    .parameter "eventWhat"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    iput p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceStateEventWhat:I

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public notifySignalStrength(I)V
    .locals 2
    .parameter "eventWhat"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    iput p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mAsuEventWhat:I

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIG_STR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    :try_start_0
    const-string v4, "android.intent.action.SIG_STR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getNotifySignalStrength()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    iget v5, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mAsuEventWhat:I

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .local v2, message:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v2           #message:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, phoneState:Ljava/lang/String;
    const-class v4, Lcom/android/internal/telephony/Phone$State;

    invoke-static {v4, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone$State;

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getNotifyPhoneCallState()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    iget v5, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneStateEventWhat:I

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #message:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2           #message:Landroid/os/Message;
    .end local v3           #phoneState:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PhoneStateIntentRecv] caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getNotifyServiceState()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    iget v5, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceStateEventWhat:I

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #message:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public registerIntent()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setTarget(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    return-void
.end method

.method public unregisterIntent()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
