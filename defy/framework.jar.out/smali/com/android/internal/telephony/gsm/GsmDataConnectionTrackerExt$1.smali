.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmDataConnectionTrackerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsScreenOn:Z
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Z)Z

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->stopNetStatPoll()V

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->startNetStatPoll()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsScreenOn:Z
    invoke-static {v7, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Z)Z

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->stopNetStatPoll()V

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->startNetStatPoll()V

    goto :goto_0

    :cond_2
    const-string v7, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GPRS reconnect alarm. Previous state was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, reason:Ljava/lang/String;
    const-string v7, "type"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, type:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    check-cast v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .restart local v1       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setReason(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .local v3, msg:Landroid/os/Message;
    iput v10, v3, Landroid/os/Message;->arg1:I

    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->sendMessage(Landroid/os/Message;)Z

    .end local v3           #msg:Landroid/os/Message;
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v1           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    .end local v5           #reason:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    :cond_5
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .local v4, networkInfo:Landroid/net/NetworkInfo;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v9

    :goto_1
    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Z)Z

    goto/16 :goto_0

    :cond_6
    move v8, v10

    goto :goto_1

    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :cond_7
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    move v2, v9

    .local v2, enabled:Z
    :goto_2
    if-nez v2, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static {v7, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Z)Z

    goto/16 :goto_0

    .end local v2           #enabled:Z
    :cond_8
    move v2, v10

    goto :goto_2
.end method
