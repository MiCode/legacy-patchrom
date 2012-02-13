.class Lcom/android/server/WifiService$6;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 5
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_sleep_policy"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, wifiSleepPolicy:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move v1, v4

    :goto_0
    return v1

    :cond_0
    if-ne v0, v4, :cond_1

    if-eqz p2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$6;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .local v6, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "wifi_idle_ms"

    const-wide/32 v22, 0xdbba0

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    .local v9, idleMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "stay_on_while_plugged_in"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .local v17, stayAwakeConditions:I
    const-string v20, "android.intent.action.SCREEN_ON"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v21 .. v21}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/android/server/WifiService;->mDeviceIdle:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->access$1002(Lcom/android/server/WifiService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->access$1102(Lcom/android/server/WifiService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #calls: Lcom/android/server/WifiService;->sendReportWorkSourceMessage()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #calls: Lcom/android/server/WifiService;->sendEnableRssiPollingMessage(Z)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiStateTracker;->isAnyNetworkDisabled()Z

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, "WifiService"

    const-string v21, "Disabled networks Found Enable them on ACTION_SCREEN_ON"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #calls: Lcom/android/server/WifiService;->sendEnableNetworksMessage()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v20, "android.intent.action.SCREEN_OFF"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->access$1102(Lcom/android/server/WifiService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/android/server/WifiService;->sendEnableRssiPollingMessage(Z)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$6;->shouldWifiStayAwake(II)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    .local v11, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v20

    sget-object v21, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/32 v22, 0x1d4c0

    add-long v18, v20, v22

    .local v18, triggerTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v22 .. v22}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v18

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .end local v18           #triggerTime:J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    add-long v18, v20, v9

    .restart local v18       #triggerTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v22 .. v22}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v18

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .end local v11           #info:Landroid/net/wifi/WifiInfo;
    .end local v18           #triggerTime:J
    :cond_4
    const-string v20, "com.android.server.WifiManager.action.DEVICE_IDLE"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/android/server/WifiService;->mDeviceIdle:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->access$1002(Lcom/android/server/WifiService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #calls: Lcom/android/server/WifiService;->sendReportWorkSourceMessage()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    :cond_5
    const-string v20, "android.intent.action.BATTERY_CHANGED"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    const-string v20, "plugged"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .local v13, pluggedType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$6;->shouldWifiStayAwake(II)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$6;->shouldWifiStayAwake(II)Z

    move-result v20

    if-nez v20, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    add-long v18, v20, v9

    .restart local v18       #triggerTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v22 .. v22}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v18

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v13

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$1702(Lcom/android/server/WifiService;I)I

    goto/16 :goto_1

    .end local v18           #triggerTime:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v13

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$1702(Lcom/android/server/WifiService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v20

    if-eqz v20, :cond_0

    goto/16 :goto_1

    .end local v13           #pluggedType:I
    :cond_7
    const-string v20, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    new-instance v5, Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v20

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .local v5, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v16

    .local v16, sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v12, 0x0

    .local v12, isBluetoothPlaying:Z
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    .local v15, sink:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v5, v15}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/4 v12, 0x1

    goto :goto_2

    .end local v15           #sink:Landroid/bluetooth/BluetoothDevice;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setBluetoothScanMode(Z)V

    goto/16 :goto_0

    .end local v5           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #isBluetoothPlaying:Z
    .end local v16           #sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_a
    const-string v20, "com.android.kineto.GanState"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "GanState"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, ganState:Ljava/lang/String;
    const-string v20, "WifiService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Receive GAN LITE Intent - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "GAN_VOICE_CALL"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    const-string v20, "QoS"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .local v14, qos:I
    const-string v20, "WifiService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "QoS: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->setGanActive(ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/android/server/WifiService;->mGanActiveFlag:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->access$1802(Lcom/android/server/WifiService;Z)Z

    goto/16 :goto_0

    .end local v14           #qos:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mGanActiveFlag:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, "DEREGISTERED"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    const-string v20, "REGISTERED"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/net/wifi/WifiStateTracker;->setGanActive(ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/android/server/WifiService;->mGanActiveFlag:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->access$1802(Lcom/android/server/WifiService;Z)Z

    goto/16 :goto_0
.end method
