.class Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "LteCdmaDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "GSM"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v8, v11}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$102(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Z)Z

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->stopNetStatPoll()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->startNetStatPoll()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v8, v10}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$102(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Z)Z

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->stopNetStatPoll()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    :cond_2
    const-string v8, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GPRS reconnect alarm. Previous state was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$200(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "reason"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, reason:Ljava/lang/String;
    const-string v8, "type"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, type:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$300(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v1, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setReason(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .local v3, msg:Landroid/os/Message;
    iput v10, v3, Landroid/os/Message;->arg1:I

    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    const/4 v10, 0x5

    invoke-virtual {v9, v10, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v1           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    .end local v5           #reason:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    :cond_4
    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .local v4, networkInfo:Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v11

    :goto_1
    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$402(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Z)Z

    goto/16 :goto_0

    :cond_5
    move v9, v10

    goto :goto_1

    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :cond_6
    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "wifi_state"

    const/4 v9, 0x4

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    move v2, v11

    .local v2, enabled:Z
    :goto_2
    if-nez v2, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static {v8, v10}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$502(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Z)Z

    goto/16 :goto_0

    .end local v2           #enabled:Z
    :cond_7
    move v2, v10

    goto :goto_2

    :cond_8
    const-string v8, "com.motorola.ims.action.registration_status"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "Code"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .local v6, regstat:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->convertImsRegStatusToRilCause(I)I
    invoke-static {v9, v6}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$600(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;I)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mPdnDeactivateCause:I

    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMS Registration state is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "DeactivateCause = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    iget v9, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mPdnDeactivateCause:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_9

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsImsConnected:Z
    invoke-static {v8, v10}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$702(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Z)Z

    goto/16 :goto_0

    :cond_9
    if-nez v6, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsImsConnected:Z
    invoke-static {v8, v11}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$702(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Z)Z

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    const-string v9, "default"

    const-string v10, "IMSRegistered"

    #calls: Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->requestDataSetup(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v9, v10}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$800(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
