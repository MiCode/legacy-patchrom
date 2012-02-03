.class public Lcom/android/internal/telephony/DefaultPhoneNotifier;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DefaultPhoneNotifier$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 41
    return-void
.end method

.method public static convertCallState(Lcom/android/internal/telephony/Phone$State;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 157
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 163
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 159
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 161
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertCallState(I)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "state"

    .prologue
    .line 172
    packed-switch p0, :pswitch_data_0

    .line 178
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    :goto_0
    return-object v0

    .line 174
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 176
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 221
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$DataActivityState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataActivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 231
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 223
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 225
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 227
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 229
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataActivityState(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter "state"

    .prologue
    .line 240
    packed-switch p0, :pswitch_data_0

    .line 250
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    :goto_0
    return-object v0

    .line 242
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 244
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 246
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 248
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 187
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 195
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 189
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 191
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 193
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "state"

    .prologue
    .line 204
    packed-switch p0, :pswitch_data_0

    .line 212
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    :goto_0
    return-object v0

    .line 206
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 208
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 210
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 149
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneNotifier] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method


# virtual methods
.method public notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallForwardingChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyCellLocation(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, data:Landroid/os/Bundle;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellLocation(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 11
    .parameter "sender"
    .parameter "reason"

    .prologue
    .line 97
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    .line 100
    .local v10, telephony:Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getActiveDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v2

    .line 101
    .local v2, activeState:I
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v1

    .line 103
    .local v1, state:I
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getActiveApn()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    move v8, v4

    :goto_0
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, p2

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionEx(IIZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1           #state:I
    .end local v2           #activeState:I
    :goto_1
    return-void

    .line 103
    .restart local v1       #state:I
    .restart local v2       #activeState:I
    :cond_0
    const/4 v4, 0x0

    move v8, v4

    goto :goto_0

    .line 125
    .end local v1           #state:I
    .end local v2           #activeState:I
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 1
    .parameter "sender"
    .parameter "reason"

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "sender"

    .prologue
    .line 44
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 45
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    const-string v0, ""

    .line 46
    .local v0, incomingNumber:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/Phone$State;)I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceState(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method
