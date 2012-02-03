.class Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;
.super Landroid/os/Handler;
.source "EmergencyCallHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyCallHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmergencyCallEventHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/EmergencyCallHandler$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const-string v5, "About to (re)launch InCallScreen: "

    const-string v4, "EmergencyCallHandler"

    .line 84
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 87
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    .line 88
    .local v1, state:Landroid/telephony/ServiceState;
    const-string v2, "EmergencyCallHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_SERVICE_STATE_CHANGED: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 90
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;

    .line 93
    .local v0, eci:Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;
    iget-object v2, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 94
    iget-object v2, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->dialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 98
    :cond_1
    const-string v2, "EmergencyCallHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to (re)launch InCallScreen: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v2, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->app:Landroid/app/Application;

    iget-object v3, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    .end local v0           #eci:Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;
    .end local v1           #state:Landroid/telephony/ServiceState;
    :sswitch_1
    const-string v2, "EmergencyCallHandler"

    const-string v2, "EVENT_TIMEOUT_EMERGENCY_CALL..."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;

    .line 108
    .restart local v0       #eci:Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;
    iget-object v2, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->dialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    iget-object v2, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 112
    :cond_2
    const-string v2, "EmergencyCallHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to (re)launch InCallScreen: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->app:Landroid/app/Application;

    iget-object v3, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
