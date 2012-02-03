.class public Lcom/android/phone/TimeEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeEventReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method getPhoneInterface()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 63
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, action:Ljava/lang/String;
    const-string v3, "TimeEventReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: Action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v3, "com.android.phone.FAKE_CALL_ALARM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/android/phone/TimeEventReceiver;->getPhoneInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 45
    .local v2, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v1, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 48
    .local v1, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    .line 60
    .end local v1           #cm:Lcom/android/internal/telephony/CallManager;
    .end local v2           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v3, "com.android.phone.MINUTE_MINDER_ALARM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_0

    .line 57
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->playMinuteMinder()V

    goto :goto_0

    .line 52
    .restart local v2       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
